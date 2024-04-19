# get the £500 spend csvs and combine them for upload to ods
# read them all in as a list of tibbles with guessed col types
# convert to all character types
# bind rows
# clean and rename according to https://validator.opendata.esd.org.uk/Spend
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
  mutate(BeneficiaryName = coalesce(Supplier, `Supplier Name`),
         PaymentDate = coalesce(Date, `Doc Date`) |>
           parse_date_time(orders = c("dmy")),
         Supplier = NULL,
         `Supplier Name` = NULL,
         Date = NULL,
         `Doc Date` = NULL,
          `Ap/Ar ID(T)` = NULL,
         Amount = as.numeric(Amount),
         IrrecoverableVATAmount = as.numeric(`Irrecoverable VAT`),
         `Irrecoverable VAT` = NULL,
         TransactionNumber = as.integer(TransNo),
         TransNo = NULL
         ) |> 
  filter(!is.na(TransactionNumber)) |>
  rename(Purpose = `Summary of Purpose`,
         ServiceCategoryLabel = `Service Area`) %>% 
  relocate(ServiceCategoryLabel,
           BeneficiaryName,
           PaymentDate,
           TransactionNumber,
           Amount, 
           IrrecoverableVATAmount,
           Purpose)


ods_out_tbl |> write_csv("data/weca_500_pounds.csv", na = "")


# issues: empty columns, over 1m empty rows in June 2019 batch
# Irrecoverable VAT appearing in some batches - needs keeping but only present in one batch
# `Ap/Ar ID(T)` ?? appearing in some batches
# inconsistent names for date and supplier columns
# inconsistent date formatting in 1st quarter of 2018 - 2 digit years hence use parse_date_time()
