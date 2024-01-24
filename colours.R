library(xfun)
libs <- c("khroma", "collapse", "data.table", "tidyverse", "jsonlite", "colorspace")
pkg_attach2(libs)

col_sites <- "{'Brislington Depot':'#19630A','Colston Avenue':'#E5352D','Fishponds Road':'#E87273','Parson Street School':'#F9C4A7','Wells Road A37 Airport Road Junction':'#B060A3','AURN St Pauls':'#334BFF','Temple Way':'#F9D7A2'}"

# col_sites %>% %>% 

hcl_palettes(plot = TRUE)


site_cols <- diverging_hcl(8, palette = "Berlin")
