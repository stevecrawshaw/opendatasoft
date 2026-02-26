# Load the libraries
# IMD R package https://cran.r-project.org/web/packages/IMD/IMD.pdf
# AS OF FEB 2026 THE IMD PACKAGE DOES NOT CONTAIN THE 2025 UPDATE
pacman::p_load(tidyverse, IMD, duckdb, DBI)

# connect to a local database to get the ward codes
con <- dbConnect(duckdb::duckdb(), "../data-lake/data_lake/mca_env_base.duckdb")

# query to get WoE ward codes (inc North Somerset)
wards <- dbGetQuery(
  con,
  "SELECT code FROM bdline_ward_lep_tbl;"
) |>
  pull()

# use the built in IMD data from the package
# and filter for those wards in the West of England
# This uses the proper population weighted scores
data(imd_england_ward)

imd_england_ward |>
  filter(ward_code %in% wards) |>
  arrange(desc(Score))


lep_imd_ward_subdomain_tbl <- imd_england_ward_subdomains |>
  filter(ward_code %in% wards)

lep_imd_consolidated_ward_tbl <-
  inner_join(
    lep_imd_ward_base_tbl,
    lep_imd_ward_subdomain_tbl,
    by = "ward_code"
  ) |>
  rename_with(~ str_replace_all(.x, "_", " ") |> str_to_sentence()) |>
  view()

lep_imd_consolidated_ward_tbl |>
  write_csv("data/lep_imd_consolidated_ward_tbl.csv")

dbDisconnect(con)
