pacman::p_load(tidyverse, janitor, glue, fs)

source_path <- "data/weca_500_pounds.csv"
update_path <- "data/financial_disclosures_update/Third-quarter-October-2024-December-2024(in).csv"


source_tbl <- read_csv(source_path)
update_tbl <- read_csv(update_path)

archive_path <- fs::path_file(update_path) |> path_ext_remove()

rename_function <- function(source_name){
  nm <- tolower(source_name)
case_when(
  str_detect(nm, "purpose") ~ "Purpose",
  str_detect(nm, "service") ~ "ServiceCategoryLabel",
  str_detect(nm, "supplier") ~ "BeneficiaryName",
  str_detect(nm, "date") ~ "PaymentDate",
  str_detect(nm, "rans") ~ "TransactionNumber",
  str_detect(nm, "amount") ~ "Amount",
  .default = "rename_failed"
  )
}

make_date_format <- function(update_tbl){
  # This test is needed when saving the file from xls to csv
  # as they often, still wrongly name the csv file as .xls
  test_tbl <- update_tbl %>% 
    set_names(rename_function) |> 
    mutate(test_date = as.Date(PaymentDate, format = "%d/%m/%Y"))
  
  na_rows <- test_tbl$test_date |> map_lgl(~is.na(.x) )|> sum()
  
  all_rows <- test_tbl |> nrow()
  
  if((na_rows / all_rows) >= 0.98){
    print("ISO 8601 compliant date format")
    return("%d/%m/%Y")
    
  } else {
    print("US date format - switching format string to %m/%d/%Y")
    return("%m/%d/%Y")
  }

}

df <- make_date_format(update_tbl)

updated_tbl <- update_tbl %>% 
  set_names(rename_function) %>% 
  mutate(TransactionMethod = "Spend over £500",
         PaymentDate = as.Date(PaymentDate, format = df)) %>% 
  bind_rows(source_tbl)
  
rowcheck = nrow(updated_tbl) == nrow(update_tbl) + nrow(source_tbl)

colcheck = ncol(updated_tbl) == ncol(source_tbl)

renamecheck = !any(str_detect(names(updated_tbl), "rename"))

namecheck = all(names(source_tbl) %in% names(updated_tbl))

all_checks_pass <- any(c(rowcheck, colcheck, namecheck, renamecheck))

if(all_checks_pass) {
  write.csv(updated_tbl, "data/weca_500_pounds.csv", na = "", fileEncoding = "UTF-8", row.names = FALSE)
  write_csv(source_tbl, glue("data/financial_disclosures_update/{archive_path}_update.csv"), na = "" )
} else {
  print("A check failed")
}

write_excel_csv(updated_tbl, "data/test_utf8.csv")

stringi::stri_enc_set(read_csv("data/weca_500_pounds.csv") |> 
                           pull(TransactionMethod) )

