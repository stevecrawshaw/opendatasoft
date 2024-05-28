pacman::p_load(tidyverse,
               sf,
               fs,
               glue,
               janitor,
               tmap,
               tmaptools,
               ggmap
               )

# read and process open rivers data form OS for publishing on LNRS layers in portal

path <- "data/LNRS-portal-layers/03 - GIS Layers for Portal/oprvrs_essh_gb_OS_open_rivers/data"

gpkg_path <- fs::dir_ls(path, glob = "*.gpkg")

st_layers(gpkg_path)

rivers_os <- st_read(gpkg_path, layer = "watercourse_link")

# boundary of weca + NS
lep_buffer_sf <- st_read("../lnrs/data/lep_boundary.geojson") %>% 
  st_buffer(dist = 1000)

clipped_rivers_sf <- rivers_os %>% 
  st_intersection(lep_buffer_sf) %>% 
  select(-name, -id.1) %>% 
  st_transform(crs = st_crs("WGS84"))

# plot the rivers

clipped_rivers_sf %>% plot()

# export the rivers for portal

clipped_rivers_sf %>% 
  st_write(glue("{path}/ods-os-open-rivers_{Sys.Date()}_.geojson"),
           delete_layer = TRUE,
           delete_dsn = TRUE,
           append = FALSE)

