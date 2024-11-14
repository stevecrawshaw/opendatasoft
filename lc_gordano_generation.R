pacman::p_load(tidyverse, readxl, janitor, glue)

(sheets = readxl::excel_sheets("data/2024 Oct LCG Community Energy DataSheet.xlsx"))

column_names = c("year",
                 "month",
                 "actual_kwh",
                 "forecast_kwh")


gen_sheets <- sheets |> 
  keep(~ .x %>% str_detect("generation"))
site_names <- gen_sheets |> 
  map_chr(~ .x %>% str_remove("generation") %>% str_trim(side = "both"))

gen_data <- gen_sheets |> 
  map(~ read_xlsx("data/2024 Oct LCG Community Energy DataSheet.xlsx", .x, skip = 5)) |> 
  set_names(site_names) |> 
  map(~ .x |> set_names(column_names)) |> 
  bind_rows(.id = "site_name")

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
  mutate(date = make_last_day_date(year, month)) |> 
  pivot_longer(cols = c(actual_kwh, forecast_kwh),
               names_to = "kwh_type",
               values_to = "kwh") 


clean_gen_data |>
  ggplot(aes(x = date, y = kwh, color = kwh_type)) +
  geom_line(lwd = 1) +
  facet_wrap(~ site_name, scales = "free_y")  
