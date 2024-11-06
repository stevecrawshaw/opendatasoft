pacman::p_load(tidyverse, httr2, janitor, glue)

base_url <-  "https://opendata.westofengland-ca.gov.uk"
endpoint_start <- "catalog/datasets"
endpoint_end <- "records"
dataset <- "lep-epc-domestic-point"
select <- "ladnm,property_type,count(current_energy_rating) as epc_count,current_energy_rating"
group_by = "ladnm,property_type,current_energy_rating"


response <-  request(base_url) |> 
  req_url_path("api", "explore", "v2.1") |> 
  req_url_path_append(endpoint_start, dataset, endpoint_end) |> 
  req_method("GET") |> 
  req_url_query(
    select = select,
    group_by = group_by,
    limit = "1000",
    offset = "0",
    timezone = "UTC",
    include_links = "false",
    include_app_metas = "false",
  ) |> 
  req_headers(
    accept = "application/json; charset=utf-8",
  ) |> 
  req_perform()

epc_tbl <- resp_body_json(response) |> 
  bind_rows()


epc_tbl |> 
  ggplot(aes(x = current_energy_rating,
             y = epc_count)) +
  geom_col(position = "dodge") +
  facet_wrap(ladnm ~ property_type) +
  labs(title = "EPC distribution by property type and Local Authority",
       x = "EPC Rating",
       y = "Count") +
  theme_minimal()
