pacman::p_load(tidyverse, janitor, glue, readxl)

cpf_data_path <- "data/Community Pollinator Fund Data _ 2024.xlsx"

sheets <- readxl::excel_sheets(cpf_data_path)

# Utility Functions ----------------
# 
make_features <- function(tbl){
  # common operations on both plants and invertebrates data
  tbl |>
    fill(reference, .direction = "down") |>
  fill(habitat, .direction = "down") |>
    mutate(date = 2024,
         site_code = str_extract(reference, "[A-Z]+"),
         habitat_class = str_split_i(habitat, " ", i = 1),
         habitat_type = str_sub(
           habitat,
           start = str_count(habitat_class, ".") + 3,
           end = -1) %>% str_trim(side = "left")
         )
}


# Plants ----------------
# 

plants_raw_tbl <- read_xlsx(cpf_data_path, sheet = "Plants 24") |> 
  clean_names()

plants_clean_tbl <- plants_raw_tbl |> 
  mutate(abundance = na_if(abundance, "N/A")) |>
  rename(plant_scientific = plant_species_latin_name,
         common_name = plant_species_common_name,
         plant_scientific_dafor = abundance) |>
  make_features() |> 
   
  glimpse()

# Invertebrates ----------------
# 
inv_raw_tbl <- read_xlsx(cpf_data_path, sheet = "Invertebrates 24") |> 
  clean_names()

inv_clean_tbl <- inv_raw_tbl |> 
  rename(invertebrate_scientific = invertebrate_species_latin_name,
         common_name = invertebrate_species_common_name,
         invertebrate_species_count = count) |>
  make_features() |>
  mutate(across(
    c(
    invertebrate_scientific,
    common_name,
    invertebrate_species_count
  ),
  ~na_if(.x, "N/A"))) |>
  # remove spurious ashy mining bee
  filter(str_detect(reference, "^[A-Z]{2}")) |> 
    glimpse()

# write out
# 
# 