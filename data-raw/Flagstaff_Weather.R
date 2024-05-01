## code to prepare `DATASET` dataset goes here

library(tidyverse)
library(roxygen2)

# Read in the data and keep desired variables
Flagstaff_Weather <- read.csv('data-raw/Pulliam_Airport_Weather_Station.csv') %>%
  mutate(Date=DATE) %>%
  select(Date,PRCP,SNOW,TMAX,TMIN)


# Save the data frame to the data/ directory as Flagstaff_Weather.rda
usethis::use_data(Flagstaff_Weather, overwrite = TRUE)
