
library(readr)
pokemon <- read_csv("data/pokemon.csv")

plot(pokemon$height_m, pokemon$weight_kg, col = 5, pch = 51)
