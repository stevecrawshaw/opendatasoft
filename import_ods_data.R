library("xfun")
pkg_attach2(c("tidyverse", "glue", "httr2"))
# Parse Column Types for a dataset using the /dataset_id API endpoint

# Get Fields ----
get_fields_fnc <- function(dataset_id, apikey){
  
  base_url <- "https://opendata.bristol.gov.uk/api/v2/catalog/datasets/"
  # dataset_id <- "cycling-west-of-england-network"
  url <- glue("{base_url}{dataset_id}/")
  qry <- list(
    select = "*",
    lang = "en",
    timezone = "UTC",
    apikey = apikey
  )
  
  r_dataset_id <- GET(url = url, query = qry, encode = "json")
  sc <- r_dataset_id %>% status_code()
  if(sc == 200){
    fields_tbl <- r_dataset_id %>%
      content(as = "text") %>%
      fromJSON() %>% 
      pluck("dataset", "fields") %>%
      select(-annotations) %>% 
      as_tibble()
    
    data_type_tbl <- tribble(
      ~ODS_type, ~R_type, ~abb,
      "text", "character", "c",
      "int", "integer", "i",
      "date", "date", "D",
      "datetime", "datetime", "T",
      "double", "double", "d",
      "geo_point_2d", "character", "c",
      "geo_shape", "character", "c"
      
    )
    
    dsf <- fields_tbl %>% 
      left_join(data_type_tbl, by = c("type" = "ODS_type"))
    
  } else {
    dsf <- sc
  }
  
  return(dsf)
}

# fields_f <- get_fields_fnc("luftdaten_pm_bristol")
# 
# function to get the col_types to pass to read_delim
# if select = * then don't filter
# if select is vectorish of fields, separate and use as filter criteria
# if select is vector of length 1 use that as a filter on name
# allcols_tbl comes from get_field_fnc

# Get Column Types ----

get_col_types_fnc <- function(select_str, allcols_tbl){
  
  if(select_str == "*"){
    col_tbl <- allcols_tbl
  } else if(str_detect(select_str, ", ")){
    col_tbl <- filter(allcols_tbl, name %in% as_vector(str_split(select_str, pattern = ", ")))
  } else {
    col_tbl <-  filter(allcols_tbl, name %in% select_str)
  }
  # do some re ordering if a selection of fields are queried so that col_types matche
  # field order
  if(str_detect(select_str, ", ")){
    select_ordered_tbl <- enframe(unlist(str_split(select_str, pattern = ", "))) %>% 
      inner_join(col_tbl, by = c("value" = "name"))
  } else {
    select_ordered_tbl <- col_tbl
  }
  return(select_ordered_tbl)
}


# get_col_types_fnc(select_str = "sensor_id, date", allcols_tbl = fields_f)

# Date Helper ----

datehelper_fnc <- function(dateon, dateoff){
  # make a range string from two dates
  
  # dateon <- "2021-01-01 00:02:00"
  # dateoff <- "01/02/2021"
  
  dates_chr <- c("dateon" = dateon, "dateoff" = dateoff)
  dates_vec <- parse_date_time2(dates_chr, orders = c("Ymd", "dmY", "YmdHMS", "dmYHMS", "YmdHM", "dmYHM"))
  
  # stopifnot(!any(is.na(dates_vec)),
  #           dates_vec[2] > dates_vec[1])
  
  tp <- strftime(dates_vec, format = "%Y-%m-%dT%H:%M:%S")
  
  where_str_date_portion <- glue(" IN ['{tp[1]}' TO '{tp[2]}']")
  return(where_str_date_portion)
}

# datehelper_fnc(dateon = "2021-02-02", dateoff = "03-03-2021")  


# Get ODS Export ----

getODSExport <- function(select_str = "siteid, pm25",
                         date_col = "date_time",
                         dateon = "2021-01-01",
                         dateoff = "02/01/2021",
                         where_str = "siteid = '452'",
                         order_by = "siteid, date_time",
                         refine = "current:True",
                         dataset = "air-quality-data-continuous",
                         apikey = NULL) {
  
  # select_str = "sensor_id, date, pm10, pm2_5, geo_point_2d"
  # date_col = "date"
  # dateon = date_on
  # dateoff = date_off
  # where_str = sts_sensors
  # refine = NULL
  # apikey = NULL
  # dataset = "luftdaten_pm_bristol"
  
  base_url <- glue("https://opendata.bristol.gov.uk/api/v2/catalog/datasets/{dataset}/exports/csv/")
  
  # get the fields from the API
  
  allcols_tbl <- get_fields_fnc(dataset_id = dataset, apikey = apikey)
  column_tbl <- get_col_types_fnc(select_str = select_str, allcols_tbl = allcols_tbl)
  limit <- -1L
  # remake the correctly ordered select query string
  select_str_ordered <- paste0(column_tbl[["value"]], collapse = ", ")
  # make the shortcut string for col types
  col_type <- paste0(column_tbl[["abb"]], collapse = "")
  # browser()
  # Make the where_str: if date_col and dates present construct a date range string
  # and add to the other terms for the filter given in where_str
  if(is.character(date_col) & is.character(dateon) & is.character(dateoff)){
    dateportion <- datehelper_fnc(dateon, dateoff)
    if(where_str == "" || is.null(where_str)){
      where_qry_str <- glue("{date_col}{dateportion}")
    } else {
      where_qry_str <- glue("({where_str}) AND {date_col}{dateportion}")
    }
  } else {
    if(where_str == "" || is.null(where_str)){
      #if there's no date filter and no other filter limit query to 1000
      limit <- 1000L
    } 
    where_qry_str <- where_str
    
  }
  
  qry_list <- list(select = select_str_ordered,
                   where = where_qry_str,
                   refine = refine,
                   apikey = apikey,
                   order_by = order_by,
                   limit = limit)
  
  r <- GET(url = base_url, query = qry_list) 
  
  if(!http_error(r)){ #FALSE = no error
    
    content(r, as="text") %>% 
      read_delim(delim = ";", col_types = col_type) %>% 
      return()
  } else {
    return(error = list(status_code(r),
                        r$url))
  }
}

# Get ODS Records ----

# limited to 100 records - can aggregate
getODSRecords <- function(select_str = "siteid, avg(pm25) as mean_pm25",
                          where_str = "date_time IN ['2020-01-01T00:00:00' TO '2020-12-31T23:59:00']",
                          groupby_str = "siteid, year(date_time)",
                          dataset = "air-quality-data-continuous",
                          orderby_str = "siteid",
                          apikey = NULL,
                          limit = 10) {
  base_url <- glue("https://opendata.bristol.gov.uk/api/v2/catalog/datasets/{dataset}/records")
  if(select_str == "all") {select_str <- "*"}
  qry_list <- list(select = select_str,
                   group_by = groupby_str,
                   where = where_str,
                   apikey = NULL,
                   order_by = orderby_str,
                   limit = limit)
  r <- GET(url = base_url, query = qry_list) 
  if(!http_error(r)){ #FALSE = no error
    
    content(r, as="text") %>% 
      fromJSON() %>% 
      pluck("records", "record", "fields") %>%
      return()
  }
}

# testing ----
# 
# dataset <- "no2-tubes-raw"
# select_str <- "mid_date, siteid, concentration, dateon, dateoff"
# # groupby_str <- "siteid, year(date_time)"
# where_str <- ""
# where_str <- NULL
# date_on <-  "2020-01-01"
# date_off <-  "2021-01-03"
# date_on <-  NULL
# date_off <-  NULL
# date_col <-  "mid_date"
# refine <- ""
# samp_data <- getODSExport(date_col = date_col,
#                           dateon = date_on,
#                           dateoff = date_off,
#                           select_str = select_str,
#                           where_str = where_str,
#                           dataset = dataset,
#                           apikey = apikey,
#                           refine = refine)
# 
# samp_data[[2]]

# out <- getODSAggregate(select_str, where_str, groupby_str, dataset)
