pacman::p_load(tidyverse, glue, janitor, sf, DBI, RPostgres, zip)

creds <- config::get(file = "../config.yml", config = "weca_gis")[c(-1)]  
tryCatch({
      print("Connecting to GIS Database…")
      con <- dbConnect(RPostgres::Postgres(),
      host = creds$hostname,
      dbname = creds$database,
      user = creds$uid,
      password = creds$pwd)
      print("Database Connected! :D")
},
error=function(cond) {
    print("Unable to connect to GIS Database. Check VPN")
})
  all_schemas <- dbGetQuery(con,
  "SELECT schema_name FROM information_schema.schemata") 
  
  os_tables <- dbGetQuery(con,
  "SELECT table_name FROM information_schema.tables WHERE table_schema='os'")
  
  weca_boundary <- st_read(con,
  query = "SELECT * FROM os.bdline_ua_weca_diss")
  
  
  plot(weca_boundary, max.plot = 1)
  #https://westofenglandca.opendatasoft.com/explore/dataset/weca-boundary/table/
  weca_boundary |> 
    st_transform(crs = 4326) |> 
  st_write("data/weca_boundary.shp")
  
  # need to convert to a linestring for export to OPDS and use in the lnrs app
  # so it doesn't take tooltip priority
  # https://westofenglandca.opendatasoft.com/explore/dataset/weca-boundary-line/map/?location=10,51.55189,-2.49115&basemap=jawg.streets
  weca_boundary |> 
    st_transform(crs = 4326) |> 
    mutate(name = "West of England MCA boundary") |> 
    st_cast(to = "LINESTRING") |>
    st_write("data/weca_line.shp")
  
  exts = c("dbf", "prj", "shp", "shx")
  files = paste0("data/weca_line.", exts)
  zip(zipfile = "data/weca_line.zip", files = files)
  
  
  dbDisconnect(con)
rm(con)  
