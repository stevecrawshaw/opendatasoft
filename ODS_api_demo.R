source("ods-import-httr2.R")

aq_data <- import_ods("air-quality-data-continuous", 
                      endpoint = "records", 
                      date_col = "date_time",
                      dateon = "2015-01-01",
                      dateoff = "2022-12-31",
                      group_by = "year(date_time) as year, location, siteid",
                      select = "siteid, location, date_time, AVG(no2) AS no2_mean")

aq_data %>% 
  view()

aq_data %>% 
  ggplot(aes(x = year, y = no2_mean)) +
  geom_col(fill = "lightblue") +
  facet_wrap(~ location, scales = "free_y")
