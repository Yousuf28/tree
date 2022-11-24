## code to prepare `my_dataset` dataset goes here

my_dataset <- jsonlite::fromJSON("data_json/benefit.json")
usethis::use_data(my_dataset, overwrite = TRUE)
