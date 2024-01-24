p <- c("tidyverse", "here", "data.table", "lubridate", "sf", "leaflet", "leafem", "geojsonio", "glue", "tmap", "tmaptools")
library(xfun)
pkg_attach2(p)
aq_monitors <- read_sf("https://opendata.bristol.gov.uk/explore/dataset/air-quality-monitoring-sites/download/?format=geojson&timezone=Europe/London") %>% 
  filter(current == "True")

wards <- read_sf("https://opendata.bristol.gov.uk/explore/dataset/wards/download/?format=geojson&timezone=Europe/London&lang=en")

tubes_sf <- read_sf("https://opendata.bristol.gov.uk/explore/dataset/no2-diffusion-tube-data/download/?format=geojson&disjunctive.location=true&q=year+%3E%3D+2019&timezone=Europe/London&lang=en")

aqma <- read_sf("https://opendata.bristol.gov.uk/explore/dataset/air-quality-management-areas/download/?format=geojson&timezone=Europe/London&lang=en")

year <- 2020

tubes_cy_sf <- tubes_sf %>% 
    filter(year == {{year}})

tubes_cy_36_sf <- tubes_cy_sf %>% 
    filter(conc_ugm3 >= 36)


bris_box <- st_bbox(wards)
aqma_box <- st_bbox(aqma)

 osm_bris <- readRDS("data/osm_bris.rds")

tmap_mode("view")

lp <- leaflet.providers::get_providers()
tm_basemap(server = "OpenStreetMap.Mapnik") +
    # tm_shape(osm_bris) +
    # tm_rgb() +
    tm_shape(aqma, bbox = "aqma_box") +
    tm_borders(col = "red", lwd = 1, lty = "solid") +
    tm_shape(tubes_cy_36_sf) +
    tm_symbols(size = 5, col = "conc_ugm3", scale = .5, n = 2, palette = "-RdYlGn")




# 
# path <- "S:/SUSTAIN/Sustain-Common/SCCCS/write_gis_r/Mapping/os_open/local/opmplc_essh_st/OS OpenMap Local (ESRI Shape File) ST/data"
# 
# roads_files <- glue("{path}/ST_Road.shp")
# 
# roads <- st_read(roads_files)
# 
cropbox <- c(ymax = 184000, ymin = 166000, xmin = 349000, xmax = 366000)
# 
# 
# bristol_roads <- roads %>% st_crop(y = cropbox)

bristol_box <- st_bbox(obj = wards_gj)


brisraster <- read_osm(bristol_box)






aqm <-   aq_monitors %>%
  as.data.frame() %>%
  separate(geo_point_2d, into = c("lat", "long"), sep = ", ") %>% 
  mutate(lat = as.numeric(str_sub(lat, 3)),
         long = as.numeric(str_sub(long, 1, -2))) %>% 
  mutate(color = case_when(
    instrumenttype == "Diffusion Tube" ~ "blue",
    instrumenttype == "Continuous (Reference)" ~ "red",
    instrumenttype == "Continuous (Indicative)" ~ "green"))

livenox <- aq_monitors %>% 
  filter(str_detect(pollutants, "NOX")) %>% 
  nrow()
  
leaflet(data = aqm) %>%
  setView(lng = -2.6, lat = 51.46, zoom = 12) %>%
  addTiles(urlTemplate = "http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png")  %>% 
  addGeoJSON(wards_gj) %>% 
  addCircleMarkers(~long,
                   ~lat,
                   popup = ~paste0(location,
                                   "<br/>",
                                   "Pollutants: ", pollutants,
                                   "<br/>",
                                   "Location class: ", locationclass),
                   label = ~ as.character(siteid),
                   color = ~ color) %>% 
  addLegend(position = "bottomleft", colors = ~unique(color), labels = ~unique(instrumenttype))

#-------------------------CHLOROPLETH MAP---------------------------
dropno2 <- c("easting", "northing")
df_no2_ods <- fread("https://opendata.bristol.gov.uk/explore/dataset/no2-diffusion-tube-data/download/?format=csv&timezone=Europe/London&use_labels_for_header=false", drop = dropno2)

curr_tubes <- df_no2_ods %>% 
  filter(year == max(year)) %>% 
  rename(Site_ID = siteid, NO2_ugm3 = conc_ugm3) %>% 
  separate(geo_point_2d, into = c("lat", "long"), sep = ",") %>% 
  mutate(lat = as.numeric(lat),
         long = as.numeric(long))

getColor <- function(curr_tubes) {
  sapply(curr_tubes$NO2_ugm3, function(NO2_ugm3) {
    if(NO2_ugm3 <= 40) {
      "green"
    } else if(NO2_ugm3 <= 60) {
      "red"
    } else {
      "purple"
    } })
}

icons <- awesomeIcons(
  icon = 'circle',
  iconColor = 'black',
  library = 'fa',
  markerColor = getColor(curr_tubes)
)

#icon = 'ios-close',
#no2 <- expression("NO"[2] * "concentration in ")

curr_tubes %>% 
  leaflet() %>%
  setView(lng = -2.6, lat = 51.46, zoom = 12) %>%
  addTiles(urlTemplate = "http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png")  %>% 
  addAwesomeMarkers(~long,
                    ~lat,
                    popup = ~paste0(location, "<br/>",
                                    "NO2 concentration in ", year, ": ",
                                    "<b>", NO2_ugm3, "<b/>", " ugm-3"),
                    label = ~as.character(Site_ID),
                    icon = icons,
                    clusterOptions = markerClusterOptions()) %>% 
  addLegend(position = "bottomleft",
            colors = c("green", "red", "purple"),
            labels = c("compliant", "breaches annual objective", "possible breach hourly objective"))

