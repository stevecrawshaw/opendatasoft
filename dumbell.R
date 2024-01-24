p <- c("tidyverse", "glue", "ggalt", "janitor", "lubridate", "skimr", "openair", "config")
library(xfun)
pkg_attach2(p)
rm(p)

apikey = get(config = "ods-api", value = "apikey")
# get the raw tube data from ODS
get_tube_data <- function(){
    
    read_delim(glue("https://opendata.bristol.gov.uk/explore/dataset/no2-tubes-raw/download/?format=csv&disjunctive.identifier=true&q=mid_date:%5B2018-01-01+TO+2022-06-03%5D&timezone=Europe/London&lang=en&use_labels_for_header=false&csv_separator=%3B&apikey={apikey}"), delim = ";", col_types = cols(
        id = col_integer(),
        siteid = col_integer(),
        dateon = col_date(format = ""),
        dateoff = col_date(format = ""),
        concentration = col_double(),
        mid_date = col_date(format = ""),
        location = col_character(),
        identifier = col_character()
    ))
    
}

aqm_sites <- read_delim("https://opendata.bristol.gov.uk/explore/dataset/air-quality-monitoring-sites/download/?format=csv&timezone=Europe/London&lang=en&use_labels_for_header=false&csv_separator=%3B", delim = ";")

# wrangle to get data suitable for plotting

make_db_plot_data <- function(tube_data_raw_tbl, target_site = 3, reference_site){
    
    siteid_fc <- c(target_site, reference_site)
    
    tube_data_clean_tbl <- tube_data_raw_tbl %>% 
        filter(siteid %in% siteid_fc) %>% 
        mutate(m = month(mid_date),
               mname = month(mid_date, label = TRUE) %>%
                   fct_reorder(month(mid_date)),
               y = year(mid_date),
               name = glue("{str_replace_all(location, ' ', '_')}_{siteid}") %>% as_factor(),
               id = NULL,
               identifier = NULL,
               dateon = NULL,
               dateoff = NULL,
               location = NULL) %>% 
        group_by(siteid, name, m, mname, y, mid_date) %>% 
        summarise(concentration = mean(concentration, na.rm = TRUE),
                  .groups = "drop") %>% 
        arrange(siteid, mid_date)
    
    return(tube_data_clean_tbl)
}

# make the ggplot
db_chart <- function(tube_data_clean_tbl){
    
    db_chart_gg <- tube_data_clean_tbl %>% 
        mutate(mid_date = glue("{y}-{m}-15") %>% ymd(),
               sitename = str_replace_all(name, "_", " ") %>%
                   str_wrap(width = 12) %>% 
                   as_factor()) %>% 
        ggplot(aes(y = concentration, x = mid_date)) +
        geom_line(aes(group = mid_date), lty = 5, alpha = 0.4) +
        #geom_segment(aes(group = mid_date)) +
        geom_point(aes(color = sitename), size = 5) + 
        geom_smooth(aes(group = sitename, color = sitename), se = FALSE) +
        labs(x = "Date",
             y = quickText("NO2 ugm-3 (unbiased)"),
             color = "Site",
             title = quickText("Monthly Variation of NO2 at Diffusion Tube Sites"),
             subtitle = "Raw, unbiased, not distance adjusted") +
        theme_bw() +
        guides(
            color = guide_legend(byrow = TRUE)
        ) +
        theme(legend.spacing.y = unit(1, "cm"))
    return(db_chart_gg)
}

# function to save ggplot with site names
save_gg <- function(gg){
    
    filename <- gg$data$name %>%
        as.character() %>%
        unique() %>% 
        append("plots/gg_", after = 0) %>% 
        append("_", after = 2) %>% 
        append(".png") %>% 
        glue_collapse()
    
    f <- ggsave(filename, gg, device = "png", width = 10, height = 7)
    
    return(print(glue("Image saved here {f}")))
    
}

# run functions ----

tube_data_raw_tbl <- get_tube_data()

gg <-  tube_data_raw_tbl %>% 
    make_db_plot_data(target_site = 473,
                         reference_site = 470) %>% 
    db_chart()  

gg

save_gg(gg)


#-----------------------------------------------------------

target_site <- 3
reference_site <- 21

siteid_fc <- c(target_site, reference_site)

names_siteid_fc <- tube_data_clean_tbl %>% 
    pull(name) %>% 
    unique()
names(siteid_fc) <- names_siteid_fc

siteid_fc

nm1 <- names_siteid_fc[1] %>% as.character()
nm2 <- names_siteid_fc[2] %>% as.character()

wide_tbl <- tube_data_clean_tbl  %>% 
    pivot_wider(id_cols = m:y,
                names_from = name,
                values_from = concentration) %>%
    arrange(y, mname) %>% 
    mutate(diff = !!(rlang::sym(nm1)) - !!(rlang::sym(nm2)),
           mid_date = glue("{y}-{m}-15") %>% ymd())
# plot the difference as bar chart
wide_tbl %>% 
    ggplot(aes(x = mid_date, y = diff)) +
    geom_col()
