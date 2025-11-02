library(dplyr)
sites <- c("Lewis Run", "Caribou", "Arikaree")
conductivity <- c(15, 10, 3)
temperature  <- c(12, 6, 4)
oxygen       <- c(11, 5, 2)
turbidity    <- c(14, 7, 2)
elevation    <- c(10, 4, 1)

df <- data.frame(
  Site = rep(sites, each = 5),
  Variable = rep(c("Conductivity", "Temperature", "Oxygen", "Turbidity", "Elevation"), times = 3),
  Variance = c(conductivity, temperature, oxygen, turbidity, elevation)
)


clean_data <- df %>%
  mutate(Variable = factor(Variable, levels = c("Conductivity", "Temperature", "Oxygen", "Turbidity", "Elevation")),
         Site = factor(Site, levels = sites))


usethis::use_data(clean_data, overwrite = TRUE)
