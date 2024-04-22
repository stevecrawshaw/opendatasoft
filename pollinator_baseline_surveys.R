pacman::p_load(tidyverse, janitor, glue, docxtractr, rlist)
#need to replace manual line breaks with paragraph marks in the source doc
# so that the cell contents can be separeted on delim \n

# Read the Word document
doc <- read_docx("data/Community Pollinator Fund - 2023 Baseline Survey Report.docx")

# If you want to extract all tables from the document
all_tables <- docx_extract_all_tbls(doc, guess_header = TRUE, preserve = TRUE)


eco_tbls <- all_tables[6:10] %>% 
  bind_rows() %>% 
  clean_names()

clean_tbl <- eco_tbls %>% 
  na.omit() %>%
  mutate(
    habitat_class = str_split_i(habitat, " ", i = 1),
    habitat_type = str_sub(habitat, 
                           start = str_count(habitat_class, ".") + 3,
                           end = -1) %>% str_trim(side = "left"),
    area_or_length = str_remove(area_length, " m2| m") %>% 
      as.numeric(),
    area_length_unit = str_extract(area_length, "(?<=\\s)[^\\s]+$")) %>%
  separate_longer_delim(plant_species_common, delim = "\n") %>% 
  separate_longer_delim(plant_species_scientific, delim = "¶") %>% 
  separate_longer_delim(invertebrate_species, delim = "\n") %>% 
  separate_longer_delim(secondary_code_s, delim = "¶") %>% 
  separate_longer_delim(secondary_code_s, delim = "\n") %>%
  separate_longer_delim(secondary_code_s, delim = "; ") %>%
  mutate(code_no = str_extract(secondary_code_s, "[0-9]+"),
                code_vector = str_extract_all(secondary_code_s,
                                              "[a-zA-Z\\s-]+"),
                code_desc = map(code_vector, ~paste(.x, collapse = " ")) %>%
                  unlist() %>% 
                  str_remove(" - ") %>% 
                  str_trim(side = "both") %>% 
                  na_if("None") %>% 
                  na_if(""),
         code_vector = NULL,
         invertebrate_species_count = str_extract(invertebrate_species, 
                                                  "(?<=- )[0-9]+$") %>% 
           as.integer(),
         plant_scientific_dafor = str_extract(plant_species_scientific,
                                              "(?<= )[A-Z]+$"),
         plant_common_dafor = str_extract(plant_species_common,
                                          "(?<= )[A-Z]+$"),
         plant_scientific = str_remove(plant_species_scientific, plant_scientific_dafor) %>%
           str_trim(side = "right"),
         plant_common = str_remove(plant_species_common, plant_common_dafor) %>% str_trim(side = "right")) %>% 
  mutate(invertebrate_scientific = str_extract(invertebrate_species, 
                                               "\\b\\w+\\b\\s+\\b\\w+\\b"),
         invertebrate_common = str_remove(invertebrate_species, invertebrate_scientific) %>% 
           str_trim("both")) %>% 
    glimpse()

clean_tbl %>% 
  distinct(reference, plant_scientific, plant_scientific_dafor) %>%
  glimpse()

clean_tbl %>% 
  distinct(reference, plant_common, plant_common_dafor) %>%
  glimpse()

clean_tbl %>% 
  distinct(reference, habitat_type, habitat_class, area_or_length, area_length_unit) %>%
  #dates for survey in 2023
  mutate(date = if_else(str_starts(reference, "S|B"),
                        dmy("26/07/2023"), dmy("27/07/2023"))) %>%
  glimpse()

clean_tbl %>% 
  distinct(reference, code_no, code_desc) %>%
  glimpse()

clean_tbl %>% 
  distinct(reference, invertebrate_scientific,
           invertebrate_common, invertebrate_species_count) %>%
  glimpse()



