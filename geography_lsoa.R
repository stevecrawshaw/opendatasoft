pacman::p_load(tidyverse, sf, glue, janitor)


#source: https://geoportal.statistics.gov.uk/datasets/ons::lsoa-2021-to-electoral-ward-2024-to-lad-2024-best-fit-lookup-in-ew/explore?filters=eyJMQUQyNE5NIjpbIkJyaXN0b2wsIENpdHkgb2YiLCJCYXRoIGFuZCBOb3J0aCBFYXN0IFNvbWVyc2V0IiwiTm9ydGggU29tZXJzZXQiLCJTb3V0aCBHbG91Y2VzdGVyc2hpcmUiXX0%3D
#
#download as csv because the geography formats give you empty geometries!!
 
lsoa_lu_lep_raw_tbl <- read_csv("data/LSOA_(2021)_to_Electoral_Ward_(2024)_to_LAD_(2024)_Best_Fit_Lookup_in_EW.csv")

lsoa_lu_lep_raw_tbl |> 
  clean_names() |>
  select(-ends_with("W")) |> 
  write_csv("data/lsoa_lu_lep.csv")
