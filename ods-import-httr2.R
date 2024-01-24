if(!require("pacman")){
  install.packages("pacman")
} else { 
library("pacman")
}
#remove.packages("pacman", lib = "/usr/lib/R/site-library")

packages <- c("httr2",
"jsonlite",
"tidyverse",
"glue",
"lubridate")

p_load(char = packages)

# 1.0 Utility Functions ----
# Return a tibble of fields and their data types
get_fields_fnc <- function(dataset, ...) {
  #include the dots to pass apikey for restricted datasets
  base_url <-
    "https://opendata.bristol.gov.uk/api/v2/catalog/datasets/"
  
  fields_1_tbl <- request(base_url) %>%
    req_url_path_append(dataset) %>%
    req_url_query(...) %>% 
    req_perform() %>%
    resp_body_string() %>%
    fromJSON() %>%
    pluck("dataset", "fields")
  
  if("timeserie_precision" %in% colnames(fields_1_tbl$annotations)){
  fields_tbl <- fields_1_tbl %>% 
    mutate(precision = .$annotations$timeserie_precision) %>% 
    mutate(type = case_when( # account for dates where precision is not day
      precision == "year" ~ "int",
      precision == "month" ~ "text",
      precision == "day" ~ "date",
      TRUE ~ type
    ))  %>% 
    select(-annotations, -precision) %>%
    as_tibble()
  } else {
    fields_tbl <- fields_1_tbl %>% 
      select(-annotations) %>% 
      as_tibble()
  }
    
  data_type_tbl <- tribble(
    ~ ODS_type,
    ~ R_type,
    ~ abb,
    "text",
    "character",
    "c",
    "int",
    "integer",
    "i",
    "date",
    "date",
    "D",
    "datetime",
    "datetime",
    "T",
    "double",
    "double",
    "d",
    "geo_point_2d",
    "character",
    "c",
    "geo_shape",
    "character",
    "c",
    "file",
    "character",
    "c"
    
  )
  fields_tbl %>%
    left_join(data_type_tbl, by = c("type" = "ODS_type")) %>% 
    return()
}


# return an ordered tbl of the selected fields with the abbreviated col_types
get_col_types_fnc <- function(select_str, allcols_tbl) {
  if (select_str == "*" || is.null(select_str)) {
    col_tbl <- allcols_tbl
  } else if (str_detect(select_str, ", ")) {
    col_tbl <-
      filter(allcols_tbl, name %in% as_vector(str_split(select_str, pattern = ", ")))
  } else {
    col_tbl <-  filter(allcols_tbl, name %in% select_str)
  }
  # do some re ordering if a selection of fields are queried so that col_types matche
  # field order
  if (select_str == "*" || is.null(select_str)) {
    # (str_detect(select_str, ", ")) {
    select_ordered_tbl <- col_tbl
  } else if (str_detect(select_str, ", ")) {
    select_ordered_tbl <-
      enframe(unlist(str_split(select_str, pattern = ", "))) %>%
      inner_join(col_tbl, by = c("value" = "name"))
  }
  return(select_ordered_tbl)
}


# Date Helper ----

datehelper_fnc <- function(dateon, dateoff) {
  # make a range string from two dates

  dates_chr <- c("dateon" = dateon, "dateoff" = dateoff)
  dates_vec <-
    parse_date_time2(dates_chr,
                     orders = c("Ymd",
                                "dmY",
                                "YmdHMS",
                                "dmYHMS",
                                "YmdHM",
                                "dmYHM",
                                "Y",
                                "mY"))
  
  # stopifnot(!any(is.na(dates_vec)),
  #           dates_vec[2] > dates_vec[1])
  
  tp <- strftime(dates_vec, format = "%Y-%m-%dT%H:%M:%S")
  
  where_str_date_portion <- glue(" IN ['{tp[1]}' TO '{tp[2]}']")
  return(where_str_date_portion)
}


# 2.0 Wrapper Function ----

# select endpoint = "records" and format = "json" for grouped queries
# select endpoint = "exports" and format = "csv" for raw records

import_ods <- function(dataset,
                       endpoint = "exports",
                       group_by = NULL,
                       date_col = NULL,
                       dateon = NULL,
                       dateoff = NULL,
                       format = "csv",
                       select = NULL,
                       where = NULL,
                       ...) {
  base_url <-
    "https://opendata.bristol.gov.uk/api/v2/catalog/datasets/"
  
  if (endpoint == "records") {
    format <- ""
  }
  
  allcols_tbl <- get_fields_fnc(dataset, ...)
  column_tbl <- get_col_types_fnc(select_str = select,
                                  allcols_tbl)
  # remake the correctly ordered select query string
  select_str_ordered <- paste0(column_tbl[["value"]],
                               collapse = ", ")
  # make the shortcut string for col types
  col_type <- paste0(column_tbl[["abb"]], collapse = "")
  # browser()
  # Make the where_str: if date_col and dates present construct a date range string
  # and add to the other terms for the filter given in where_str
  if (is.character(date_col) &
      is.character(dateon) & is.character(dateoff)) {
    dateportion <- datehelper_fnc(dateon, dateoff)
    if (where == "" || is.null(where)) {
      where <- glue("{date_col}{dateportion}")
    } else {
      where <- glue("({where}) AND {date_col}{dateportion}")
    }
  } else {
    if (where == "" || is.null(where)) {
      #if there's no date filter and no other filter limit query to 1000
      limit <- 1000L
    }
  }
  
  params <- list(select = select,
                 where = where,
                 group_by = group_by,
                 ...)

    resp <- request(base_url) %>%
    req_url_path_append(dataset) %>%
    req_url_path_append(endpoint) %>%
    req_url_path_append(format) %>%
    req_url_query(!!!params) %>%
    req_user_agent("steve c") %>%
    req_perform()

  if (format == "csv") {
    out <- resp %>%
      resp_body_raw() %>%
      read_delim(delim = ";",
                 col_types = col_type)
  } else {
 
    out <- resp %>%
      resp_body_json() %>%
      pluck("records") %>%
      map_df(~ pluck(.x, "record", "fields"))
    
  }
  
  return(out)
}
