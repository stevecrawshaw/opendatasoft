# Let's demo the ODS API by getting a count of the properties where there is no current
# or future gigabit broadband provision and making a thematic map to see distribution in the region

# We'll use the platform to do the aggregation - fast!

# Load libraries

pacman::p_load(
  tidyverse,
  glue,
  httr2, # API package
  sf,
  tmap,
  tmaptools,
  cols4all
)

# you can build and test the URL in the API console
# https://opendata.westofengland-ca.gov.uk/api/explore/v2.1/console

# this function breaks it down into its components

url_parse(
  "https://westofenglandca.opendatasoft.com/api/explore/v2.1/catalog/datasets/bduk-west-of-england/records?select=local_authority%2Clsoa_code%2Ccount%28uprn%29%20AS%20premises&group_by=local_authority%2Clsoa_code&where=NOT%20current_gigabit%20AND%20NOT%20future_gigabit&limit=20000&offset=0"
)

# then we can reassemble by assigning the components to variables

# universal (for all the API calls we'll make in this script)
hostname <- "https://westofenglandca.opendatasoft.com"
path1 <- "api/explore/v2.1"
path2 <- "catalog/datasets"
limit <- 20000
offset <- 0

# Specific (to the API call for the bduk dataset)
bduk_endpoint = "records"
bduk_dataset <- "bduk-west-of-england"
bduk_select <- "local_authority,lsoa_code,count(uprn) AS premises"
bduk_groupby <- "local_authority,lsoa_code"
bduk_where <- "NOT current_gigabit AND NOT future_gigabit"


# now we get the response object from the bduk dataset using the httr2 functions and the variables we
# made to create the API call
# The response object is json, and has objects within it like the url, the body (what we want)
# and the status code - 200 means OK

bduk_response <- request(hostname) |>
  req_url_path_append(path1, path2, bduk_dataset, bduk_endpoint) |>
  req_url_query(
    "select" = bduk_select,
    "group_by" = bduk_groupby,
    "where" = bduk_where,
    "limit" = limit,
    "offset" = offset
  ) |>
  req_perform()

bduk_response |> pluck("url")

# We extract the results from the body json object and bind all the rows to make a dataframe
bduk_no_gigabit_tbl <- bduk_response |>
  resp_body_json() |>
  pluck("results") |>
  bind_rows()

# Cool, let's get the LSOA spatial data as a spatial features (sf) object

# lsoa_api_url <- "https://opendata.westofengland-ca.gov.uk/api/explore/v2.1/catalog/datasets/lep_lsoa_geog/exports/fgb?select=lsoa21cd%2Cgeo_shape&limit=-1&timezone=UTC&use_labels=false&compressed=false&epsg=4326"

# specific variables for this API call
lsoa_dataset <- "lep_lsoa_geog"
lsoa_select <- "lsoa21cd,geo_shape" # <- we just want these 2 fields. geo_shape is the spatial column
lsoa_format <- "fgb" # <- FlatGeoBuf format - an efficient spatial representation
lsoa_endpoint <- "exports" # we're getting the file itself now


# This pipeline is going to run the api call and pipe the result into the sf::st_read function which creates
# a spatial features object called lsoa_sf
lsoa_sf <- request(hostname) |>
  req_url_path_append(path1, path2, lsoa_dataset, lsoa_endpoint, lsoa_format) |>
  req_url_query(
    "select" = lsoa_select,
    "limit" = limit,
    "offset" = offset
  ) |>
  req_perform() |>
  pluck("url") |>
  st_read()

# Now we just join the data from the first API call (lsoa codes with no current or future gigabit)
#  with the spatial data
lsoa_nogigabit_sf <- lsoa_sf |>
  inner_join(bduk_no_gigabit_tbl, by = join_by(lsoa21cd == lsoa_code))

# We use the tmap library to represent the joined spatial data with an open street map basemap
tmap_mode("view")
tm_basemap("OpenStreetMap") +
  tm_shape(lsoa_nogigabit_sf) +
  tm_polygons(
    fill = "premises",
    fill.scale = tm_scale_continuous(),
    fill_alpha = 0.7,
    col = "black",
    lwd = 0.5
  )
