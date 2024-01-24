packages <- c("tidyverse", "openair", "glue", "timetk", "here", "lubridate", "httr", "jsonlite")
library(xfun)
pkg_attach2(packages)

water_raw_tbl <- read_csv("S:/SUSTAIN/Sustain-Common/SCCCS/write_gis_r/water_database/qrySurfaceWaterSamples.csv")

water_list <- water_raw_tbl %>% 
    mutate(old_new = if_else(datetime > as.POSIXct("2021-01-01 00:00:00"), "new", "old") %>% as_factor()) %>% 
    nest_by(old_new) %>% 
    ungroup() %>% 
    transmute(data, file = glue("data/water_samples_{old_new}.csv"))
water_list

pwalk(water_list %>% select(x = data, file), write_csv, na = "")

water_list %>% 
    mutate(nrow = nrow(data))

wsold <- read_csv("data/water_samples_old.csv")
wsnew <- read_csv("data/water_samples_new.csv")


qrsws_old <- read_csv("data/qrySurfaceWaterSamples_old.csv")

ods_export_tbl <- read_delim("https://opendata.bristol.gov.uk/explore/dataset/surface-water-quality/download/?format=csv&timezone=Europe/London&lang=en&use_labels_for_header=false&csv_separator=%3B", delim = ";")

testset <- qrsws_old %>% 
    full_join(ods_export_tbl, by = c("siteid", "datetime")) %>% 
    select(siteid, datetime, tc_cfu.x, tc_cfu.y)

setdiff(qrsws_old$datetime, ods_export_tbl$datetime)

counts_tbl <- qrsws_old %>% 
    group_by(year(datetime)) %>% 
    count()

samp2019 <- qrsws_old %>% 
    filter(year(datetime) == 2019) 


