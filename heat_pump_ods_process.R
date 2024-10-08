pacman::p_load(tidyverse, glue, janitor, sf, readxl)
# Reference
# Nesta's September 2024 Project Update here: https://www.nesta.org.uk/project-updates/charting-the-course-findings-from-phase-one-of-mapping-heat-pump-suitability/
# 

source_data_path <- "data/heat pump suitability/20240925_2023_Q4_EPC_heat_pump_suitability_per_lsoa.xlsx"

raw_tbl <- read_excel(source_data_path, sheet = "Data")

lsoa_tbl <- read_csv("https://opendata.westofengland-ca.gov.uk/api/explore/v2.1/catalog/datasets/lep_lsoa_geog/exports/csv?lang=en&timezone=Europe%2FLondon&use_labels=false&delimiter=%2C")

hps_lep_lsoa_tbl <- lsoa_tbl |> 
  select(matches("cd|nm")) |> 
  inner_join(raw_tbl, 
             by = join_by(lsoa21cd == lsoa)) |> 
  clean_names() |> 
  glimpse()

hps_lep_lsoa_tbl |> 
  write_csv2("data/heat pump suitability/hps-lep-ods-tbl.csv",
             na = "")



