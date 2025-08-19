# Get the contract data from the spreadsheets
# clean and rename according to https://validator.opendata.esd.org.uk/Spend
# filter out rows with no transno

# Libraries ----
pacman::p_load(
  tidyverse,
  janitor,
  glue,
  rvest,
  lobstr,
  readxl,
  rio,
  scales,
  rlist
)

# for testing
# filename <- "https://www.westofengland-ca.gov.uk/wp-content/uploads/2022/10/Transparency-Report-Q2-for-website.csv"

domain <- "https://www.westofengland-ca.gov.uk"
main_page <- "https://www.westofengland-ca.gov.uk/about-us/democracy-funding-transparency/financial-disclosures/"

# helper function
date_from_char <- function(date_str) {
  date_str %>%
    as.numeric() %>%
    excel_numeric_to_date()
}
# Try to read the HTML content of the page

page <- try(read_html(main_page))

if (inherits(page, "try-error")) {
  return()
}

# Find all links on the page

link_nodes <- html_nodes(page, "a")

link_text <- link_nodes %>% html_text()
links <- html_nodes(page, "a") %>% html_attr("href")
# mask to get just the spend data

transp_link_mask <- map_lgl(links, ~ grepl("xlsx", .x))

xl_links <- tibble(link_text, links)[transp_link_mask, ] |>
  filter(!str_detect(links, "CSV|csv")) |>
  mutate(
    full_path_links = if_else(
      str_starts(links, '/wp'),
      glue("{domain}{links}"),
      links
    )
  )

# can't read the excel files directly from a URL
# Create a directory for downloads if it doesn't exist
dir.create("downloads", showWarnings = FALSE)

# Download all files
xl_links |>
  pull(full_path_links) |>
  walk(
    ~ download.file(
      url = .x,
      destfile = file.path("downloads", basename(.x)),
      mode = "wb" # binary mode for Excel files
    )
  )

# Read all downloaded Excel files
files <- list.files("downloads", pattern = "\\.xlsx$", full.names = TRUE)
# Get the sheet names in each excel file
sheets <- map(files, excel_sheets)

xl_files <- tibble(
  file = files,
  sheet = sheets
) |>
  unnest_longer(sheet) |>
  filter(str_detect(sheet, "ontract")) |>
  mutate(contract_data = map2(file, sheet, read_excel))


csv_out_tbl <- xl_files |>
  transmute(
    x = contract_data,
    file = glue("data/contracts_{fs::path_ext_remove(fs::path_file(file))}.csv")
  )

csv_out_tbl
# Write each tibble in contract_data to a csv file
pwalk(
  csv_out_tbl,
  write_excel_csv
)
# the csvs are manually assembled in a spreadsheet called
# contracts_consolidated.xlsx
# and then uploaded to the ODS
