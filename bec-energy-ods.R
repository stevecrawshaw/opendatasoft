# Read the data supplied by energy co - operative(s) and write to csv for publishing on the open data portal
pacman::p_load(tidyverse, glue, janitor, readxl)

raw_data <- read_xlsx("data/BEC sites - for WECA.xlsx",
                      sheet = "Data ",
                      skip = 5) |> 
  clean_names()

raw_data |> glimpse()

bec_sites_tbl <- raw_data |> 
  mutate(geo_point2d = paste0("{", latitude, ",", longitude, "}"),
         organisation = "Bristol Energy Co - operative",
         organisation_url = "https://bristolenergy.coop/") |> 
  select(site, project, organisation, organisation_url, year_installed, type, k_wp, comments = bec_notes, latitude, longitude, geo_point2d)
  

bec_sites_tbl |> 
  write_csv2("data/bec-energy-sites.csv", na = "")
