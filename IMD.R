
# Load the libraries
# IMD R package https://cran.r-project.org/web/packages/IMD/IMD.pdf
pacman::p_load(tidyverse, IMD, duckdb, DBI)

# connect to a local database to get the ward codes
con <- dbConnect(duckdb::duckdb(), "../mca-data/data/ca_epc.duckdb")

# query to get WoE ward codes (inc North Somerset)
wards <- dbGetQuery(con,
"WITH woe_la_cte AS
(SELECT ladcd, ladnm FROM ca_la_tbl
WHERE cauthnm = 'West of England')
SELECT DISTINCT pc.osward ward 
FROM postcodes_tbl pc
INNER JOIN woe_la_cte ON pc.oslaua = woe_la_cte.ladcd;"
) |> 
  pull()

# use the built in IMD data from the package
# and filter for those wards in the West of England
# This uses the proper population weighted scores
lep_imd_ward_base_tbl <- imd_england_ward |>
  filter(ward_code %in% wards)

lep_imd_ward_subdomain_tbl <- imd_england_ward_subdomains |>
  filter(ward_code %in% wards)

lep_imd_consolidated_ward_tbl <- 
  inner_join(lep_imd_ward_base_tbl, lep_imd_ward_subdomain_tbl, by = "ward_code") |> 
  rename_with(~str_replace_all(.x, "_", " ") |> str_to_sentence()) |>view()

lep_imd_consolidated_ward_tbl |>
write_csv("data/lep_imd_consolidated_ward_tbl.csv")

dbDisconnect(con)
