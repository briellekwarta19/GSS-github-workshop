
library(readr)
pokemon <- read_csv("data/pokemon.csv")

plot(pokemon$hp, pokemon$weight_kg, col = 5, pch = 51)
