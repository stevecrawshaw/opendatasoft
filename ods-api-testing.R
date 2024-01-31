pacman::p_load(tidyverse,
               glue,
               janitor,
               httr2,
               jsonlite,
               sf)

base_url <- "https://data.opendatasoft.com/api/explore/v2.1/catalog/"

wards_api_url <- "https://data.opendatasoft.com/api/explore/v2.1/catalog/datasets/georef-united-kingdom-ward-electoral-division@public/records?limit=-1&refine=ctyua_name%3A%22Bristol%22&refine=ctyua_name%3A%22South%20Gloucestershire%22&refine=ctyua_name%3A%22North%20Somerset%22&refine=ctyua_name%3A%22Bath%20and%20North%20East%20Somerset%22"

wards_list <- read_json(wards_api_url)

wards_sf <- st_read(wards_api_url)


