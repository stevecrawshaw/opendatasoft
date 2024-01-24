pacman::p_load(tidyverse,
               glue,
               janitor,
               httr2
)

la_codes <- c(855L, 857L, 858L, 856L)


url <- "https://api.ratings.food.gov.uk/"

req <- request(url) %>% 
  req_url_path_append("region") %>% 
  req_url_query(q = list(id = 1))




























