pacman::p_load(tidyverse, readxl, janitor, glue)

(sheets = readxl::excel_sheets("data/2024 Oct LCG Community Energy DataSheet.xlsx"))

column_names = c("year",
                 "month",
                 "actual_kwh",
                 "forecast_kwh")


gen_sheets <- sheets |> 
  keep(~ .x %>% str_detect("generation"))
site_names <- gen_sheets |> 
  map_chr(~ .x %>% str_remove("generation") %>% make_clean_names())

gen_data <- gen_sheets |> 
  map(~ read_xlsx("data/2024 Oct LCG Community Energy DataSheet.xlsx", .x, skip = 5)) |> 
  set_names(site_names) |> 
  map(~ .x |> set_names(column_names)) |> 
  bind_rows()

make_last_day_date <- function(the_year, month){
  year = as.character(the_year)
  nominal_date = glue("{year}-{month}-01") |> 
    as.Date(format = "%Y-%B-%d")
  days_in_month = days_in_month(nominal_date)
  date <- nominal_date + days_in_month - 1
  return(date)
}


clean_gen_data <- gen_data |> 
  fill(year, .direction = "down") |> 
  mutate(date = make_last_day_date(year, month))


  clean_names() |> 
  mutate(across(c(actual_kwh, forecast_kwh), as.numeric),
         across(c(year, month), as.integer),
         year = 2024) |> 
  select(-month)