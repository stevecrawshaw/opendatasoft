pacman::p_load(magick,
               tidyverse,
               glue,
               fs,
               janitor
               )

# Read in the image
filename <- "images/DALL·E 2024-04-17 12.54.47 - Design a modern corporate logo for an open data portal, incorporating a palette of specific colors. The logo should feature a digital, tech-inspired a.webp"
#img <- image_read(filename)
rm(img)
# q: code to resize the image to 500px and save as png
# a:  image_resize(img, "500x500") %>% image_write("images/500px.png")

webp_files <- fs::dir_ls("images", glob = "*.webp")

#image_resize(img, "500x500") %>% image_write("images/500px.png")

# code to subset a string from and including the word logo, up until the end of the sentence

  # q: code to subset a string from and including the word logo, up until the end of the first sentence.  

rename_and_ping <- function(webp_filepath){

  img <- image_read(webp_filepath)
  
new_filename = str_extract(webp_filepath, "logo.*\\. ") %>% 
  str_remove("\\. ") %>% 
  str_remove(",") %>% 
  str_replace_all(pattern = " ", replacement = "_") %>% 
  str_c(".png")

new_path <- str_c("images/png/", new_filename)

  # image_resize(img, "200x200")
  img %>% 
  image_write(new_path, format = "png")
}

walk(webp_files, rename_and_ping)

