pacman::p_load(tidyverse, janitor, glue)

source_tbl <- read_csv("data/weca_500_pounds.csv")
update_tbl <- read_csv("data/financial_disclosures_update/Transparency Report Q1 For Website.csv")

rename_function <- function(source_name){
  nm <- tolower(source_name)
case_when(
  str_detect(nm, "ransn") ~ "TransactionNumber",
  str_detect(nm, "purpose") ~ "Purpose",
  str_detect(nm, "service") ~ "ServiceCategoryLabel",
  str_detect(nm, "supplier") ~ "BeneficiaryName",
  str_detect(nm, "date") ~ "PaymentDate",
  str_detect(nm, "ransn") ~ "TransactionNumber",
  str_detect(nm, "amount") ~ "Amount",
  .default = "rename_failed"
  )
}

updated_tbl <- update_tbl %>% 
  set_names(rename_function) %>% 
  mutate(TransactionMethod = "Spend over £500",
         PaymentDate = as.Date(PaymentDate, format = "%d/%m/%Y")) %>% 
  bind_rows(source_tbl)
  
rowcheck = nrow(updated_tbl) == nrow(update_tbl) + nrow(source_tbl)

colcheck = ncol(updated_tbl) == ncol(source_tbl)

renamecheck = !any(str_detect(names(updated_tbl), "rename"))

namecheck = all(names(source_tbl) %in% names(updated_tbl))

all_checks_pass <- any(c(rowcheck, colcheck, namecheck, renamecheck))

if(all_checks_pass) {
  write_csv(updated_tbl, "data/weca_500_pounds.csv", na = "")
  write_csv(source_tbl, "data/weca_500_pounds_previous_quarter.csv", na = "")
} else {
  print("A check failed")
}



