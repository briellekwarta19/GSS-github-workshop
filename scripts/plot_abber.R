
library(readr)
pokemon <- read_csv("data/pokemon.csv")

plot(pokemon$weight_kg, pokemon$gen, col = 5, pch = 51)
