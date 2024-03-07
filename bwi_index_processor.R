pacman::p_load(tidyverse,
               janitor,
               glue,
               readxl
)

# Ingest the BWI sample data from chris clements
# transform to a dataset that can be published on ODS

path <-  "data/BWI data 2024 - Copy.xlsx"
sheets_vec <-
  readxl::excel_sheets(path)

make_list_from_sheets <- function(
    path = "data/BWI data 2024 - Copy.xlsx",
    sheets_vec) {
  # read all the sheets and store in a list with each element a sheet
  sheets_vec %>%
    map(~ read_xlsx(path, .x, col_types = "text")) %>% # bring all in as text
    set_names(make_clean_names(sheets_vec)) %>%
    map(.f = clean_names)
}

sheets_list <- make_list_from_sheets(path, sheets_vec)

names(sheets_list)

bwi_raw <- sheets_list %>% pluck("bristol_index_example")

bwi_clean <- bwi_raw %>% 
  mutate(across(starts_with("username"), ~NULL),
         across(c(replicate, #to logical
                  continuing_collection,
                  inside_city_limits,
                  specific_location,
                  invasive,
                  migratory,
                  resident,
                  data_transformed),
                ~as.integer(.x) %>% as.logical()),
         units = case_when(
           units %in% c("Count", "count", "Counts", "count per run") ~ "count",
           units %in% c("Transect count", "number per transect") ~ "count (transect)",
           .default = units),
         across(starts_with("x"), as.numeric),
         across(ends_with("tude"), as.numeric),
         source_year = as.integer(source_year),
         date_created = as.Date(date_created, format = "%d/%m/%Y"),
         status = NULL, # zero variance fields
         notes = NULL,
         reference = NULL
         ) %>% 
  pivot_longer(cols = starts_with("x"),
               names_to = "year",
               values_to = "value") %>% 
  mutate(year = str_sub(year, 2, 5) %>% as.integer()) %>%
  mutate(across(where(is.character), ~na_if(.x, "NA"))) %>% 
  filter(!is.na(value))

bwi_clean %>% view()


bwi_clean %>% 
  write_csv("data/bwi_clean.csv", na = "")

bwi_clean %>% 
  write_rds("data/bwi_clean.rds")

