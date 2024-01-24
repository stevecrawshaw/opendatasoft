p <-
    c("tidyverse",
      "httr2",
      "jsonlite",
      "sf")
library(xfun)
pkg_attach2(p)
rm(p)
# pasted from he-2022.xls
source_tbl <- tibble::tribble(
    ~siteid, ~easting, ~northing,
       685L,    361143,    175464,
       686L,    361152,    175673,
       687L,    361225,    175818,
       688L,    360907,    174857,
       689L,    360997,    174898,
       690L,    361136,    175114,
       691L,    361104,    175051,
       692L,    360459,    174495,
       693L,    360427,    174439,
       694L,    360515,    174431,
       695L,    360467,    174302,
       696L,    360232,    174386,
       697L,    360303,    174380
    )

#https://github.com/Jorl17/open-elevation/blob/master/docs/api.md

points_sf <- source_tbl %>% 
    st_as_sf(coords = c("easting", "northing"), crs = 27700) %>% 
    st_transform(crs = 4326)

locations <- points_sf %>% 
    mutate(longitude = unlist(map(.$geometry,1)),
           latitude = unlist(map(.$geometry,2))) %>% 
    st_drop_geometry() %>% 
    select(-siteid)

locs <- locations %>% 
    transpose() 

l <-     tojson(list(locations = locs)) 
l
# Make the API call

base_url <- "https://api.open-elevation.com/api/v1/lookup"

req <- request(base_url) %>% 
    req_headers("Accept" = "application/json",
                "Content-Type" = "application/json") %>% 
    req_body_raw(l)


req %>% 
    req_dry_run()

resp <- req_perform(req)

elevations_tbl <- resp %>% 
    resp_body_json() %>% 
    pluck("results") %>% 
    map_df(~bind_rows(.x))

elevations_tbl %>% 
    write_csv("data/he_elevations.csv")

# Check if in AQMA ----

aqma_sf <- st_read("https://opendata.bristol.gov.uk/explore/dataset/air-quality-management-areas/download/?format=geojson&timezone=Europe/London&lang=en")


in_aqma_tbl <- st_within(points_sf, aqma_sf) %>% 
    apply(1, any) %>% 
    enframe()
