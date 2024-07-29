pacman::p_load(tidyverse, janitor, glue)

# Get the LSOA tenure data from NOMIS and wrangle to publish on portal

# the url is too long for a string so has to be ingested vi sourcing a script!
source("lep_tenure_url.r")

nchar(lep_tenure_url)

lep_tenure_raw_tbl <- lep_tenure_url %>% 
  read_csv()

lep_tenure_raw_tbl %>% glimpse()

lep_tenure_long_tbl <- lep_tenure_raw_tbl %>% 
  select(
    C2021_HHTENURE_5_NAME,
    GEOGRAPHY_CODE,
    OBS_VALUE
  ) %>% 
  pivot_wider(id_cols = GEOGRAPHY_CODE,
              names_from = C2021_HHTENURE_5_NAME,
              values_from = OBS_VALUE) %>% 
  clean_names() %>% 
  rename(lsoacd21 = geography_code) %>% 
  glimpse()

lep_tenure_long_tbl %>% 
  write_csv("data/nomis-tenure-ods.csv", na = "")


