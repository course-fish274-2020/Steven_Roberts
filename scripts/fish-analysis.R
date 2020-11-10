
#reading in some data

fish_data <- read.csv("data/Gaeta_etal_CLC_data_1.csv")

library(dplyr)


# creating an addtional column that classifies fish bigger than 300mm as big (others as small)

fish_data_cat <- fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))

fish_data_cat_clean <- filter(fish_data_cat, scalelength > 1)

