# get the £500 spend csvs and combine them for upload to ods
# read them all in as a list of tibbles with guessed col types
# convert to all character types
# bind rows
# clean and rename
# filter out rows with no transno

pacman::p_load(tidyverse, janitor, glue, rvest)
# for testing
filename = "https://www.westofengland-ca.gov.uk/wp-content/uploads/2022/10/Transparency-Report-Q2-for-website.csv"

domain <- "https://www.westofengland-ca.gov.uk"
main_page <- "https://www.westofengland-ca.gov.uk/about-us/democracy-funding-transparency/financial-disclosures/"
# Try to read the HTML content of the page
page <- try(read_html(main_page))

if(inherits(page, "try-error")) return()

# Find all links on the page
links <- html_nodes(page, "a") %>% html_attr("href")
csv_links <- links[grepl("\\.csv$", links, ignore.case = TRUE)]


raw_tbl_list <- if_else(str_starts(csv_links, "http"),
        csv_links, 
        glue("{domain}{csv_links}")) |> 
    map(read_csv) 


all_tbl <- raw_tbl_list |> 
  map(~mutate(.x, across(everything(), as.character))) |> 
  bind_rows()

ods_out_tbl <- all_tbl |>
  mutate(across(where(~is.na(.x) |> all()), ~NULL)) |> 
  mutate(supplier = coalesce(Supplier, `Supplier Name`),
         date = coalesce(Date, `Doc Date`) |>
           as.Date(format = "%d/%m/%Y"),
         Supplier = NULL,
         `Supplier Name` = NULL,
         Date = NULL,
         `Doc Date` = NULL,
         `Irrecoverable VAT` = NULL,
          `Ap/Ar ID(T)` = NULL,
         Amount = as.numeric(Amount),
         TransNo = as.integer(TransNo)
         ) |> 
  filter(!is.na(TransNo)) |> 
  clean_names()

ods_out_tbl |> write_csv("data/weca_500_pounds.csv", na = "")

# issues: empty columns, over 1m empty rows in June 2019 batch
# Irrecoverable VAT appearing in some batches
# `Ap/Ar ID(T)` appearing in some batches
# inconsistent names for date and supplier columns
