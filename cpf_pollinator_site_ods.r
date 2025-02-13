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
  make_features() 

# we need to extract portions of the table that are 
# referencing other references (e.g. "As BGS1 plus:") and make explicit the species
# first extract the relation between the reference and the comparator
comparator_tbl <- plants_clean_tbl |> 
  filter(str_starts(plant_scientific, "As ")) |> 
  transmute(reference,
            comparator = str_split_i(plant_scientific, " ", 2)) |>
  glimpse()

# use to create a table which can be appended to the main table

append_tbl <- plants_clean_tbl |> 
  inner_join(comparator_tbl, join_by(reference == comparator)) |>
  mutate(reference = reference.y,
         reference.y = NULL) |>
  glimpse()

# bind the two tables together to make the final output tbl

plants_out_tbl <- bind_rows(plants_clean_tbl, append_tbl) |> 
  filter(!str_starts(plant_scientific, "As ")) |>
  glimpse()


# Invertebrates ----------------
# 
inv_raw_tbl <- read_xlsx(cpf_data_path, sheet = "Invertebrates 24") |> 
  clean_names()

inv_clean_tbl <- inv_raw_tbl |> 
  rename(invertebrate_scientific = invertebrate_species_latin_name,
         invertebrate_common = invertebrate_species_common_name,
         invertebrate_species_count = count) |>
  make_features() |>
  mutate(across(
    c(
    invertebrate_scientific,
    invertebrate_common,
    invertebrate_species_count
  ),
  ~na_if(.x, "N/A"))) |>
  # remove spurious ashy mining bee
  filter(str_detect(reference, "^[A-Z]{2}") &
         #!is.na(invertebrate_species_count) &
           !is.na(invertebrate_scientific) 
         
         ) |> 
    view()


# write out the data
# 

plants_out_tbl |> 
  write_csv("data/cpf_plants_2024.csv", na = "")


inv_clean_tbl |>
  write_csv("data/cpf_invertebrates_2024.csv", na = "")
