pacman::p_load(tidyverse,
               glue,
               janitor,
               httr2,
               sf)
# Set Local authorities for API request
la_names <- c("Bristol",
              "Bath and North East Somerset",
              "North Somerset",
              "South Gloucestershire")

# Enumerate the extent of the boundaries for the four authorities
coords <- c(-3.020049, 51.273101, -2.252135, 51.682394)
names(coords) <- c("xmin","ymin","xmax","ymax")

lep_box <- coords %>% enframe() %>% pivot_wider()

# get food hygiene data using the API
# this is the same as food_hygiene_processor, just using FSA's API

# get an ID for a given LA Name
get_authority_id <- function(la_name) {
  # API URL for local authorities
  api_url <- "http://api.ratings.food.gov.uk/Authorities/basic"
  
  # Set up the request
  response <- request(api_url) |>
    req_headers("x-api-version" = "2") |>
    req_headers("Accept" = "application/json") |>
    req_perform()
  
  # Check if the request was successful
  if (response$status_code == 200) {
    # Parse the response
    data <- response |> resp_body_json(simplifyVector = TRUE)
    local_authorities <- data$authorities
    
    # Find the IDs
    la_id <-
      local_authorities[local_authorities$Name == la_name, "LocalAuthorityId"]
    return(la_id)
  } else {
    warning("Failed to retrieve local authority data: ",
            response$status_code)
    return(NA)
  }
}
# Get the count of records (establishments) for pagination
get_count_rec <- function(la_id, api_url) {
  # Set up the request with necessary headers and parameters
  response <- request(api_url) |>
    req_headers("x-api-version" = "2") |>
    req_headers("Accept" = "application/json") |>
    req_url_query(localAuthorityId = la_id, pageSize = 1) |>
    req_perform()
  
  # Check if the request was successful
  if (response$status_code == 200) {
    # Parse the response to a data frame
    count <- response |> resp_body_json(simplifyVector = TRUE) %>%
      pluck("meta", "totalCount")
  } else {
    count <- NULL
    warning("Failed to retrieve data: ", http_status(response)$reason)
  }
  return(count)
  
}
# get the data for each LA (count_rec sets the page size)
get_data <- function(la_id, count_rec, api_url) {
  # Set up the request with necessary headers and parameters
  response <- request(api_url) |>
    req_headers("x-api-version" = "2") |>
    req_headers("Accept" = "application/json") |>
    req_url_query(localAuthorityId = la_id, pageSize = count_rec) |>
    req_perform()
  
  
  # Check if the request was successful
  if (response$status_code == 200) {
    # Parse the response to a data frame
    data <- response |> resp_body_json(simplifyVector = TRUE)
    establishments <- data$establishments
  } else {
    establishments <- NULL
    warning("Failed to retrieve data: ", response$status_code)
    
  }
  
  if (!is.null(establishments)) {
    out <- establishments %>%
      as_tibble() %>%
      unnest_wider(scores) %>%
      unnest_wider(geocode)
    
    return(out)
    
  } else {
    return(NULL)
  }
  
}

la_ids <- map_int(la_names, get_authority_id) %>%
  as.character()
# Call the API's bundle into a tbl and bind_rows the data column
combined_tbl <- tibble(la_names = la_names,
                       la_ids = la_ids) %>%
  mutate(
    count_rec = map_int(
      la_ids,
      ~ get_count_rec(.x, api_url = "http://api.ratings.food.gov.uk/Establishments")
    ),
    data = map2(
      .x = la_ids,
      .y = count_rec,
      .f = ~ get_data(.x,
                      .y,
                      api_url = "http://api.ratings.food.gov.uk/Establishments")
    )
  )
# Create a raw data tbl

out_data <- combined_tbl$data %>%
  bind_rows()

fh_clean_tbl <- out_data %>% 
  clean_names() %>% 
  # remove some extraneous fields
  select(-scheme_type,
         -rating_key,
         -local_authority_code,
         -local_authority_web_site,
         -local_authority_email_address,
         -business_type_id) %>% 
  # general data cleaning, type changing, wrangling
  mutate(across(.cols = c("hygiene",
                          "structural",
                          "confidence_in_management"),
                as.integer),
         across(.cols = c("longitude", "latitude"),
                as.double),
         rating_date = if_else(str_starts(rating_date, "20"), 
                               as.Date(rating_date),
                               NA_Date_),
         no_rating_reason = if_else(is.na(as.integer(rating_value)),
                                    rating_value,
                                    NA_character_),
         rating_value = as.integer(rating_value),
         latitude = if_else(between(latitude,
                                    lep_box$ymin,
                                    lep_box$ymax),
                            latitude, NA_real_),
         longitude = if_else(between(longitude,
                                     lep_box$xmin,
                                     lep_box$xmax),
                            longitude, NA_real_),
         geo_point_2d = if_else(is.na(latitude) | is.na(longitude),
                                NA_character_,
                                glue("{latitude}, {longitude}"))) %>%
  # reorder the columns
  relocate(
    business_name, business_type, address_line1, address_line2, address_line3, address_line4, post_code, hygiene, structural, confidence_in_management, rating_date, rating_value, no_rating_reason, new_rating_pending, local_authority_name, everything()
  ) %>% 
  # remove irrelevant API - specific columns
  select(-c(distance, right_to_reply, changes_by_server_id, phone)) 

fh_clean_tbl %>%   
write_delim(file = "data/food_hygiene_woe.csv", delim = ";", na = "")

fh_clean_tbl %>% 
  count(hygiene)


