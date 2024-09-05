pacman::p_load(tidyverse, glue, janitor, httr2, jsonlite)

# the R package PostcodesioR doesn't seem to work for bulk lookup

assets_raw <- read_csv("data/asset_mapping.csv") |> 
  clean_names()

postcodes <- unique(assets_raw$postcode) |> 
  map_chr(~str_remove(.x, "\\s$"))

# check tralling spaces
postcode_not_utf8 <- postcodes|> 
  map_lgl(validUTF8)

postcodes[!postcode_not_utf8]

# need to chunk the postcodes in batches of 100
# for the API
chunk <- function(x, n) {
  mapply(function(a, b) (x[a:b]),
         seq.int(from=1, to=length(x), by=n),
         pmin(
           seq.int(from=1, to=length(x), by=n)+(n-1),
           length(x)),
         SIMPLIFY=FALSE)
  }

jsonise <- function(a_chunk){
# create a named list of postcodes
  a_chunk |> 
  list() |> 
  set_names("postcodes")
}

flatten_to_df <- function(response){
# rectangle that bad boy
 response |> 
  resp_body_json() |> 
  pluck("result") |> 
  map(~pluck(.x, "result")) |> 
  enframe(1) |> 
  unnest_wider(value) |> 
  unnest_wider(codes, names_sep = "_")
  }

call_api <- function(postcode_json, base_url = "https://api.postcodes.io/postcodes/"){
  
  Sys.sleep(1) # wait to respect the server
  
  request(base_url) |> 
  req_headers("Content-Type" = "application/json") |> 
  req_body_json(data = postcode_json) |> 
  req_perform()
}

# the api accepts a maximum of 100 items in a json (list)
pc_chunks <- chunk(postcodes, 100)

pcodes_response_tbl <- pc_chunks |> 
  map(~jsonise(.x) |> call_api()) |> 
  map(flatten_to_df) |> 
  bind_rows()

geocoded_assets_out_tbl <- assets_raw |> 
  left_join(pcodes_response_tbl,
            by = join_by(postcode == postcode)) |> 
  rename(asset = asset_nationally_and_internationally_singificant_research_capability_and_or_institutions) |> 
  select(-`1`, -starts_with("codes")) 
  
geocoded_assets_out_tbl |> 
  write_csv("data/geocoded_assets.csv", na = "")
