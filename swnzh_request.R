# Clean and process community energy fund project data for SWNZH
# for publishing on the open data portal
# wrong encoding, truncated file names, commas in number fields, missing lat \ long, duplicated fields, null fields, date formatting incorrect

pacman::p_load(tidyverse, janitor, sf, glue)

raw_sf <- st_read("data/mattswnzh/CEProjects.shp") |> 
  clean_names()

restricted_raw_tbl <- read_csv("data/clean_cef_projects_ods_tbl.csv") |> 
  filter(is.na(remove_bool)) |> # take out the projects that are not to be published
  select(id) |> 
  glimpse()

raw_sf |> glimpse()


clean_cef_projects_interim_tbl  <- raw_sf |> 
  mutate(across(-geometry, ~str_remove_all(.x, "�"))) |> 
  mutate(across(c(match_fund, total_ca_1, total_capi, cumulative, cef_gran_1, cef_grant, rcef_stage, project_1, contains("poten")), ~str_remove(.x, ",") |>
                  as.integer()),
         lead_conta = NULL,
         path = NULL,
         multiple = NA,
         lat = NULL,
         long = NULL,
         lng = NULL,
         date_compl = as.Date(date_compl, format = "%d/%m/%Y"),
         most_rec_2 = as.Date(most_rec_2, format = "%d/%m/%Y")) |>
  mutate(longitude = sf::st_coordinates(geometry)[,1],
         latitude = sf::st_coordinates(geometry)[,2],
         geo_point_2d = paste0("{", latitude, ", ", longitude, "}")) |> 
  rownames_to_column("id") |> 
  mutate(id = as.integer(id))

clean_cef_projects_ods_tbl  <- 
  clean_cef_projects_interim_tbl |> 
  inner_join(restricted_raw_tbl, 
             by = join_by("id" == "id")) |>
  select(-id) 

clean_cef_projects_ods_tbl |> 
  st_write("data/clean_cef_projects_ods_tbl.shp",
           append = FALSE) 
