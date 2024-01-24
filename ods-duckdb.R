source("c:/ds_projects/r-projects/airquality_GIT/ods-import-httr2.R")

library("duckdb")


aqdc <- import_ods("air-quality-data-continuous",
                   date_col = "date_time",
                   dateon = "2017-01-01",
                   dateoff = "2022-12-31",
                   select = "date_time, siteid, no2, nox, no, pm10, pm25, o3")

aqms <- import_ods("air-quality-monitoring-sites")
no2dt <- import_ods("no2-diffusion-tube-data")

con <- dbConnect(duckdb::duckdb(), dbdir = "data/aq.duckdb")

dbWriteTable(con, "aqdc", aqdc, overwrite = TRUE)
dbWriteTable(con, "aqms", aqms, overwrite = TRUE)
dbWriteTable(con, "no2dt", no2dt, overwrite = TRUE)

dbListTables(con)

datalist <- list(aqdc, aqms, no2dt)
nameslist <- list("data/aqdc.csv", "data/aqms.csv", "data/no2dt.csv")

walk2(datalist, nameslist, .f = write_csv)

con %>% dbDisconnect()
