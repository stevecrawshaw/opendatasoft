pacman::p_load(tidyverse, janitor, glue, docxtractr, rlist)
#need to replace manual line breaks with paragraph marks in the source doc
# so that the cell contents can be separeted on delim \n

# Set up geo references

clean_tbl$reference %>% unique()#

geo_tbl <- tribble(
~site, ~latitude, ~longitude, ~site_code,
"South Gloucestershire College", 51.51395, -2.57312, "SGS",
"Brimsham Green School", 51.55269, -2.42459, "BGS",
"Sodbury Wildflower Meadow", 51.54565, -2.38636, "SM",
"Newbridge Open Space", 51.38871, -2.40396, "NOS",
"Yate Common Orchard", 51.53257, -2.43510, "YC"
)

# we need to get the common names from the species names with LLM
# because it is not otherwise possible to relate them from the word
# doc tables
species_tbl <- read_delim("data/species_tbl_groq.txt", delim = " | ") %>% 
  clean_names() %>% 
  mutate(across(everything(), ~str_remove_all(.x, "\\| | \\|")))

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
site_code = str_extract(reference, "[A-Z]+"),
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
     
     plant_scientific_dafor = str_trim(plant_species_scientific,
                                       side = "right") %>%
       str_extract("(?<= )[A-Z]+$"),
     
     # plant_common_dafor = str_trim(plant_species_common,
     #                               side = "right") %>%
     #   str_extract("(?<= )[A-Z]+$"),
     # 
     plant_scientific = str_remove(plant_species_scientific, "(?<= )[A-Z]+$") %>% 
       str_trim("both")) %>% 
     
     # plant_common = str_remove(plant_species_common, "(?<= )[A-Z]+$") %>% str_trim(side = "both")) %>% 

mutate(invertebrate_scientific = str_extract(invertebrate_species, 
                                           "\\b\\w+\\b\\s+\\b\\w+\\b|\\b\\w+\\b\\s+\\b\\w+\\/"),
     invertebrate_common = str_remove(invertebrate_species,
                                      invertebrate_scientific) %>%
       str_remove(" -\\s[0-9]+$") %>%
       str_remove("/terrestris ") %>% 
       str_remove("^-") %>% 
       str_trim("both")) %>% 
#dates for survey in 2023
mutate(date = if_else(str_starts(reference, "S|B"),
                    dmy("26/07/2023"), dmy("27/07/2023"))) %>% 
  left_join(species_tbl, by = join_by("plant_scientific" == "species_name"),
            relationship = "many-to-many") %>%
glimpse()

plants_tbl <- clean_tbl %>% 
distinct(reference, site_code, date, plant_scientific, common_name, plant_scientific_dafor) %>%
  filter(!is.na(plant_scientific),
         plant_scientific != "",
         plant_scientific != "None") 


sites_tbl <- clean_tbl %>% 
  distinct(reference, site_code, habitat_type, habitat_class, area_or_length, area_length_unit, code_no, code_desc) %>% 
  group_by(reference, site_code, habitat_type, habitat_class, area_or_length, area_length_unit) %>% 
  summarise(secondary_codes = paste0(code_no, ": ", code_desc, collapse = "\n")) %>%
  mutate(secondary_codes = na_if(secondary_codes, "NA: NA")) %>%
  left_join(geo_tbl, by = join_by(site_code)) %>%
view()


invertebrates_tbl <- clean_tbl %>% 
distinct(reference, date, site_code, invertebrate_scientific,
       invertebrate_common, invertebrate_species, invertebrate_species_count) %>%
  filter(!is.na(invertebrate_scientific),
         !is.na(invertebrate_common),
         invertebrate_scientific != "",
         invertebrate_scientific != "None") 



