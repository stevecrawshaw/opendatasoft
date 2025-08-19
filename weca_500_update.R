pacman::p_load(tidyverse, janitor, glue, fs, arrow, readxl)

ods_source <- "https://opendata.westofengland-ca.gov.uk/api/explore/v2.1/catalog/datasets/financial-disclosure-spend/exports/parquet?lang=en&timezone=Europe%2FLondon"

update_path <- "data/financial_disclosures_update/First-Quarter-April-2025-June-2025-XLS.xlsx"

source_tbl <- arrow::read_parquet(ods_source)

update_tbl <- read_xlsx(update_path, sheet = "Transparency Report")


archive_path <- fs::path_file(update_path) |>
  path_ext_remove()

rename_function <- function(source_name) {
  nm <- tolower(source_name)
  case_when(
    str_detect(nm, "purpose") ~ "Purpose",
    str_detect(nm, "service|ser") ~ "ServiceCategoryLabel",
    str_detect(nm, "supplier|beneficiary") ~ "BeneficiaryName",
    str_detect(nm, "date") ~ "PaymentDate",
    str_detect(nm, "method") ~ "TransactionMethod",
    str_detect(nm, "rans") ~ "TransactionNumber",
    str_detect(nm, "irrecoverable") ~ "IrrecoverableVATAmount",
    str_detect(nm, "amount") ~ "Amount",
    .default = "rename_failed"
  )
}

make_date_format <- function(update_tbl) {
  # This test is needed when saving the file from xls to csv
  # as they often, still wrongly name the csv file as .xls
  test_tbl <- update_tbl %>%
    set_names(rename_function) |>
    mutate(test_date = as.Date(PaymentDate, format = "%d/%m/%Y"))

  na_rows <- test_tbl$test_date |> map_lgl(~ is.na(.x)) |> sum()

  all_rows <- test_tbl |> nrow()

  if ((na_rows / all_rows) >= 0.98) {
    print("ISO 8601 compliant date format")
    return("%d/%m/%Y")
  } else {
    print("US date format - switching format string to %m/%d/%Y")
    return("%m/%d/%Y")
  }
}

df <- make_date_format(update_tbl)

source_renamed_tbl <-
  source_tbl |>
  set_names(rename_function) |>
  glimpse()

names(update_tbl)


updated_tbl <- update_tbl %>%
  set_names(rename_function) %>%
  filter(!is.na(TransactionNumber)) %>%
  mutate(
    TransactionNumber = as.character(TransactionNumber),
    TransactionMethod = "Spend over £500",
    PaymentDate = as.Date(`PaymentDate`, format = "%d/%m/%Y")
  ) %>%
  bind_rows(source_renamed_tbl) |>
  arrange(desc(PaymentDate)) |>
  rename_with(rename_function)


(colcheck = ncol(updated_tbl) == ncol(source_tbl))

(renamecheck = !any(str_detect(names(updated_tbl), "rename")))

(namecheck = all(rename_function(names(source_tbl)) %in% names((updated_tbl))))

(all_checks_pass <- any(c(colcheck, namecheck, renamecheck)))

if (all_checks_pass) {
  write.csv(
    updated_tbl,
    "data/weca_500_pounds.csv",
    na = "",
    fileEncoding = "UTF-8",
    row.names = FALSE
  )
  write_csv(
    source_tbl,
    glue("data/financial_disclosures_update/{archive_path}_update.csv"),
    na = ""
  )
} else {
  print("A check failed")
}

write_excel_csv(updated_tbl, "data/test_utf8.csv")

stringi::stri_enc_set(
  read_csv("data/weca_500_pounds.csv") |>
    pull(TransactionMethod)
)
