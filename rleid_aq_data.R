pacman::p_load(duckdb,
               tidyverse,
               glue,
               janitor,
               lubridate,
               fastverse, 
               timetk)

# source("../ODS/bcc_aq_data_envista.R")

con <- dbConnect(duckdb(), dbdir = "data/aq.duckdb")

dbListTables(con)

aqdc <- tbl(con, "aqdc") %>% 
    filter(
        # siteid == 203,
        between(date_time,
                as_datetime("2022-01-01 01:00:00"),
                as_datetime("2023-01-01 00:00:00")
                   )
           ) %>% 
    collect()
# setDT(aqdc)

# sample_aq <- aqdc[1:100, .(date_time)][,test := seq.int(from = 1, to = 1000, by = 10)][, .(date_time, test = fifelse((.I < 10) | (.I > 90), 10, test))]


get.runlength.tbl <- function(aq_tbl, pollutant, rl = 3){

    rl_tbl <- aq_tbl %>%
        arrange(siteid, date_time) %>% 
        filter(!is.na({{pollutant}})) %>% 
        mutate(rleid = consecutive_id({{pollutant}})) %>%
        add_count(rleid) %>% 
        filter(n >= rl) %>%
        select(date_time, siteid, {{pollutant}}, rleid)

return(rl_tbl)
}


tbl <- get.runlength.tbl(aq_tbl = aqdc, pollutant = no2, rl = 4)


tbl %>% 
    group_by(siteid, rleid) %>% 
    summarise(first_time = min(date_time))

aqdc_envista <- getAQDataDB(final_tbl = final_tbl,
                            startDate = "2022-01-01",
                            endDate = "2022-12-31", siteid = 463)

aqdc_envista %>% 
    filter(no < 0)



aqdc %>% 
    group_by(siteid) %>% 
    mutate(nox_no_ratio = if_else(no == 0, NA_real_, nox / no)) %>%
    # filter(siteid == 463, nox_no_ratio < 0) %>% view()
    ggplot(aes(x = date_time, y = nox_no_ratio)) +
    geom_line() +
    facet_wrap(~ siteid, scales = "free_y")

con %>% dbDisconnect()

