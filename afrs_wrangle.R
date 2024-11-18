pacman::p_load(tidyverse, fs, glue, janitor, rio, rvest)

# https://www.avonfire.gov.uk/wp-content/uploads/2024/02/Attended_Incidents_April-2017-to-March-2018.csv
# 
 hosting_page <- "https://www.avonfire.gov.uk/publications/incident-data/"
 

# get the links to the csv files
# 
# q: use rvest to get the links for all the csv files on the page 
# 
csv_link_list <- hosting_page |> 
  read_html() |> 
  html_nodes("a") |> 
  html_attr("href") |> 
  str_subset(".csv$") 

incidents_spec = cols(
  Day = col_double(),
  Month = col_double(),
  Year = col_double(),
  `Time of Call` = col_time(format = ""),
  `Incident Number` = col_character(),
  `X Coordinate` = col_character(),
  `Y Coordinate` = col_character(),
  Ward = col_character(),
  `Unitary Authority` = col_character(),
  `Community Safety Sector` = col_double(),
  `Origin of Call` = col_character(),
  `Incident Category` = col_character(),
  `Property Category` = col_character(),
  `Property Type` = col_character(),
  `Is Primary Fire` = col_character(),
  `Cause of Fire` = col_character(),
  `Is Property Derelict?` = col_character(),
  `Is Property Occupied at the Time of Incident?` = col_character(),
  `Property Normally Occupied?` = col_character(),
  `Is Fire Confined to Chimney?` = col_character(),
  `How Fire Was Discovered?` = col_character(),
  `Main Cause of Fire` = col_character(),
  `Ignition Source` = col_character(),
  `Ignition Source Powered` = col_character(),
  `Item First Damaged` = col_character(),
  `Item Responsible for Spreading Fire` = col_character(),
  `Main Action by Other Than FRS` = col_character(),
  `Main Action by FRS` = col_character(),
  `Type of Non Fire Incident` = col_character(),
  `Road Traffic Collision` = col_character(),
  `False Alarm reason` = col_character(),
  `Victims Involved?` = col_character(),
  `Were Alarm Systems Present?` = col_character(),
  `No. of Fatalities` = col_double(),
  `No. of Fire Fatalities` = col_double(),
  `No. of Injuries` = col_double(),
  `No. of Rescues` = col_double()
)


afrs_raw_data <- csv_link_list |> 
  map(~read_csv(.x, col_types = incidents_spec)) |> 
  set_names(csv_link_list)

afrs_tbl <- afrs_raw_data |> 
  map(~spec(.x))


afrs_tbl
