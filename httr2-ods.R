pacman::p_load(tidyverse, glue, janitor, httr2, gt)

req_url <- "https://westofenglandca.opendatasoft.com/api/explore/v2.1/catalog/datasets/area-measures-tbl/records?select=area_name%2Carea_description%2Cmeasure&group_by=area_name%2Carea_description%2Cmeasure&limit=10&offset=0&timezone=UTC&include_links=false&include_app_metas=false"


url_parse(req_url)

hostname <- "https://westofenglandca.opendatasoft.com"
path1 <- "api/explore/v2.1"
path2 <- "catalog/datasets"
dataset <- "area-measures-tbl"
endpoint = "records"
select <- "area_name,area_description,measure,measure_type,biodiversity_priority,theme,stakeholder,core_supplementary"
limit <- 10000
offset <- 0

response <- request(hostname) |> 
  req_url_path_append(path1, path2, dataset, endpoint) |>
  req_url_query("select" = select,
                "group_by" = select,
                "limit" = limit,
                "offset" = offset ) |>
  req_perform()

base_tbl <- response |> 
  resp_body_json() |>
  bind_rows()

base_tbl |> group_by(area_name,
                     area_description,
                     theme,
                     biodiversity_priority
                     ) |> 
  summarise(stakeholder = paste(stakeholder, collapse = " & ")) |>
  gt()
