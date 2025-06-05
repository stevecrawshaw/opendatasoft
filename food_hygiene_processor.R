pacman::p_load(tidyverse,
               glue,
               janitor,
               xml2, sf
               )

lep_boundary <- st_read("https://opendata.westofengland-ca.gov.uk/api/explore/v2.1/catalog/datasets/lep-boundary/exports/geojson?lang=en&timezone=Europe%2FLondon") %>% 
  st_transform(crs = 4326)

# Extract food establishment ratings data from the FSA
# Clean and prepare for loading to ODS platform

# apparently can also change the file extensions to JSON to get json

#https://ratings.food.gov.uk/open-data
base_url <- "https://ratings.food.gov.uk/api/open-data-files/"

la_names <- c("Bristol", "Bath_and_North_East_Somerset", "North_Somerset", "South_Gloucestershire")

xml_files <- c("FHRS855en-GB.xml",
               "FHRS857en-GB.xml",
               "FHRS858en-GB.xml",
               "FHRS856en-GB.xml")

food_data_list <- as.list(glue("{base_url}{xml_files}")) %>% 
  set_names(la_names)

food_files <- imap(food_data_list,
                   ~download_xml(.x,
                                 file = glue("data/{.y}.xml")))

extract_establishments <- function(la_item){

 read_xml(la_item) %>% 
  as_list() %>% 
  pluck("FHRSEstablishment", "EstablishmentCollection") 
  
}

make_df <- function(fhr_detail){
  
  unnested_tbl <- fhr_detail %>% 
    imap(unlist) %>% 
    enframe() %>% 
    unnest_longer(value) 
  
  if(ncol(unnested_tbl) == 3){
    out_tbl <- unnested_tbl %>%
      mutate(name = if_else(value_id == "",
                          name,
                          value_id
                          ),
           value_id = NULL)
  } else {
    out_tbl <- unnested_tbl
  }
  
  return(out_tbl %>% pivot_wider())
}

la_establishment_list <- map(food_files, extract_establishments)


food_hygiene_tbl <- la_establishment_list %>% 
  map(~map(.x, make_df) %>%
        bind_rows()
      ) %>% 
  bind_rows()

write_rds(food_hygiene_tbl, "data/food_hygiene_raw_tbl.rds")

food_hygiene_tbl <- read_rds("data/food_hygiene_raw_tbl.rds")

# reformat the food hygiene data for upload to ODS
fh_clean_tbl <- food_hygiene_tbl %>% 
  clean_names() %>% 
  select(-scheme_type,
         -rating_key,
         -local_authority_code,
         -local_authority_web_site,
         -local_authority_email_address,
         -business_type_id) %>% 
  mutate(across(.cols = c("hygiene",
                          "structural",
                          "confidence_in_management"),
                as.integer),
         across(.cols = c("longitude", "latitude"),
                as.double),
         rating_date = as.Date(rating_date),
         geo_point_2d = if_else((is.na(latitude) | is.na(longitude)), NA_character_, glue("{latitude}, {longitude}"))) %>%
  relocate(
    business_name, business_type, address_line1, address_line2, address_line3, address_line4, post_code, rating_date, hygiene, structural, confidence_in_management, rating_date, rating_value, new_rating_pending, local_authority_name, everything()
  ) |> 
  filter(rating_date > as.Date("2014-01-01") | is.na(rating_date)) |> 
  mutate(rating_value = as.integer(rating_value)) |> 
  rownames_to_column("id")

# make a list of id's that are in LEP to filter out
# anomalous locations
fh_clean_lep_ids <- 
  fh_clean_tbl %>%
  filter(!is.na(latitude) & !is.na(longitude)) %>%
  st_as_sf(coords = c("longitude", "latitude"), crs = 4326, remove = FALSE) %>%
  st_intersection(lep_boundary) |> 
  pull(id)
  

unique(fh_clean_tbl$rating_value)



fh_clean_tbl |> 
  filter(id %in% fh_clean_lep_ids | is.na(latitude)) |> 
write_delim(file = "data/food_hygiene_woe.csv", delim = ";", na = "")
