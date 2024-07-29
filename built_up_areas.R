pacman::p_load(tidyverse, glue, janitor, sf)

# source data: https://geoportal.statistics.gov.uk/datasets/ad30b234308f4b02b4bb9b0f4766f7bb_0/explore?location=51.463931%2C-2.619330%2C11.26

built_up_raw_sf <- st_read("data/BUA_2022_GB/3aa8b219-ab0d-462b-96ad-90cf4922f4ea.gdb") %>% 
  st_transform(crs = 4326)

# can't DL from ODP due to curl error

lep_boundary <- st_read("data/counties-and-unitary-authorities-united-kingdom.geojson")


concat_if_2 <- function(c){
out <- if(length(c) == 2){
paste0(c, collapse = ", ")

} else {
  out = c
}
unlist(out)
}

clipped_lep_bua <- built_up_raw_sf %>% st_intersection(lep_boundary) %>% 
  select(BUA22CD, BUA22NM, ctyua_code, ctyua_name) %>% 
  mutate(ladcd = map_chr(ctyua_code, ~unlist(.x)),
         ladnm = map_chr(ctyua_name, ~concat_if_2(.x)),
         ctyua_code = NULL,
         ctyua_name = NULL)
plot(clipped_lep_bua) 

clipped_lep_bua %>% 
  st_write("data/clipped_lep_bua_22.geojson")

