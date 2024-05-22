# get the £500 spend csvs and combine them for upload to ods
# read them all in as a list of tibbles with guessed col types
# convert to all character types
# bind rows
# clean and rename according to https://validator.opendata.esd.org.uk/Spend
# filter out rows with no transno

# Libraries ----
pacman::p_load(tidyverse, janitor, glue, rvest, lobstr, readxl, rio)

# for testing
filename = "https://www.westofengland-ca.gov.uk/wp-content/uploads/2022/10/Transparency-Report-Q2-for-website.csv"

domain <- "https://www.westofengland-ca.gov.uk"
main_page <- "https://www.westofengland-ca.gov.uk/about-us/democracy-funding-transparency/financial-disclosures/"
# Try to read the HTML content of the page

page <- try(read_html(main_page))

if(inherits(page, "try-error")) return()

# Find all links on the page

link_nodes <- html_nodes(page, "a") 

link_text = link_nodes %>% html_text() 
links <- html_nodes(page, "a") %>% html_attr("href")
# mask to get just the spend data
spend_link_mask <- map_lgl(link_text, ~grepl("Quarter", .x))

spend_link_tbl <- tibble(link_text, links)[spend_link_mask,] %>% 
  mutate(stated_extension = str_extract(link_text, "[A-Z]{3}") %>% 
           tolower() ,
         actual_extension = str_extract(links, "\\.[^.]+$") %>% 
           str_remove("\\."),
         extensions_match = stated_extension == actual_extension %>% 
           str_sub(1, 3)) 

rm(links)
excel_files_tbl <- spend_link_tbl %>% 
  filter(actual_extension == "xlsx") %>% 
  mutate(valid_url = if_else(str_starts(links, "http"),
                             links,
                             glue("{domain}{links}")),
         # we need to use rio::import_list to read multiple
         # sheets from the remote excel files
         sheets = map(valid_url, ~import_list(.x)),
         numsheets = map(sheets, length),
         sheetnames = map(sheets, names) %>% map(str_c, collapse = " :\n "),
         year_month = str_extract(links, "[0-9]{4}/[0-9]{2}"))

excel_files_tbl %>% 
  glimpse()


sheets <- map(excel_files_tbl, ~import_list(.x)) %>%
  set_names(excel_files_tbl) %>% 
  enframe()

ms_link <- "https://www.westofengland-ca.gov.uk/wp-content/uploads/2021/07/Transparency-Report-Q1-for-Website.xlsx"

l <- import_list(ms_link)





csv_links <- links[grepl("\\.csv$", links, ignore.case = TRUE)]

csv_links

# make a list of tibbles from the csv links
raw_tbl_list <- if_else(str_starts(csv_links, "http"),
        csv_links, 
        glue("{domain}{csv_links}")) |> 
    map(read_csv) 

# Introspect the tibbles to see the sizes, number of rows and columns
sizes_tbl <- raw_tbl_list |> 
  map(~tibble(nrow = nrow(.x), ncol = ncol(.x), size = lobstr::obj_size(.x))) |> 
  bind_rows()

# make a table to show the key aspects of the tibbles
diagnostics_tbl <- csv_links %>% 
  enframe(name = "index", value = "url") %>% 
  mutate(year = str_extract(url, "\\d{4}") |> as.integer(),
         quarter = str_extract(url, "Q[1-4]")) %>% 
  cbind(sizes_tbl)

diagnostics_tbl %>% view()











# issues: empty columns, over 1m empty rows in June 2019 batch
# Irrecoverable VAT appearing in some batches - needs keeping but only present in one batch
# `Ap/Ar ID(T)` ?? appearing in some batches
# inconsistent names for date and supplier columns
# inconsistent date formatting in 1st quarter of 2018 - 2 digit years hence use parse_date_time()


# combine all the tibbles into one

all_tbl <- raw_tbl_list |> 
  map(~mutate(.x, across(everything(), as.character))) |> 
  bind_rows()

# Create the final output csv for the £500 spend data

ods_out_tbl <- all_tbl |>
  # remove columns where everything's missing
  mutate(across(where(~is.na(.x) |> all()), ~NULL)) |> 
  mutate(
    # rename columns where inconsistent names have been applied
    BeneficiaryName = coalesce(Supplier, `Supplier Name`),
         PaymentDate = coalesce(Date, `Doc Date`) |>
           parse_date_time(orders = c("dmy")),
    # remove columns which are redundant or anomalous
         Supplier = NULL,
         `Supplier Name` = NULL,
         Date = NULL,
         `Doc Date` = NULL,
          `Ap/Ar ID(T)` = NULL,
    # convert columns to correct types
         Amount = as.numeric(Amount),
         IrrecoverableVATAmount = as.numeric(`Irrecoverable VAT`),
         `Irrecoverable VAT` = NULL,
         TransactionNumber = as.integer(TransNo),
         TransNo = NULL
         ) |> 
  # filter out rows with no transaction number
  filter(!is.na(TransactionNumber)) |>
  rename(Purpose = `Summary of Purpose`,
         ServiceCategoryLabel = `Service Area`) %>% 
  # reorder columns
  relocate(ServiceCategoryLabel,
           BeneficiaryName,
           PaymentDate,
           TransactionNumber,
           Amount, 
           IrrecoverableVATAmount,
           Purpose)

# write the csv for upload to ODS
ods_out_tbl |> write_csv("data/weca_500_pounds.csv", na = "")



