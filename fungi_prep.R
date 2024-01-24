packages <- c("glue", "lubridate", "timetk", "here", "fastverse", "tidyverse", "DataExplorer")
library(xfun)
pkg_attach2(packages)

fungi <- fread("data/fungi_raw.csv")
glimpse(fungi)

fungi %>% head(50) %>% view()

upload_fungi_tbl <- fungi %>% 
    slt(kingdom,
        phylum,
        class,
        order,
        family,
        genus,
        species,
        taxonRank,
        scientificName,
        verbatimScientificName,
        decimalLatitude,
        decimalLongitude,
        eventDate,
        institutionCode,
        identifiedBy,
        dateIdentified,
        lastInterpreted)

create_report(upload_fungi_tbl)
