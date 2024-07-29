pacman::p_load(tidyverse,
               duckdb)


con <- DBI::dbConnect(duckdb(), dbdir = "../weca_cesap/data/ca_epc.duckdb")
con %>% dbDisconnect()
# the EPC data is now within a view in the duckdb database
# calculations for construction epoch and the joins with other tables 
# are much faster than doing it in R
# The cleaning process are done in Polars and are much more performant than R

dbListTables(con)

lep_epc_domestic_point_ods_tbl <- tbl(con, "epc_lep_domestic_ods_vw") %>% 
  collect()

lep_epc_domestic_point_ods_tbl %>% 
  write_csv("data/lep_epc_domestic_point_ods_tbl.csv", na = "")

tbl(con, "epc_non_domestic_ods_vw") %>% 
  collect() %>% 
  write_csv("data/epc_non_domestic_ods.csv", na = "")

