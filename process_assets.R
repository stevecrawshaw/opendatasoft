pacman::p_load(tidyverse, glue, janitor, httr2, jsonlite)


assets_raw <- read_csv("data/asset_mapping.csv")

postcodes <- assets_raw$Postcode

base_url <- "https://api.postcodes.io/postcodes"

chunk <- function(x, n) (mapply(function(a, b) (x[a:b]), seq.int(from=1, to=length(x), by=n), pmin(seq.int(from=1, to=length(x), by=n)+(n-1), length(x)), SIMPLIFY=FALSE))


pc_chunks <- chunk(postcodes, 100)

jsonise <- function(a_chunk){
  a_chunk |> 
  list() |> 
  set_names("postcodes") |> 
  toJSON()
}

call_api <- function(base_url, postcode_json){
  request(base_url) |> 
  req_headers("Content-Type" = "application/json") |> 
  req_body_json(data = postcode_json) |> 
  req_perform()
}
  