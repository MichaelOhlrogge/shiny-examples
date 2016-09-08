# options(error=traceback)

library(dplyr)
# setwd("/Users/Ohlrogge/Dropbox/Joint_Projects/LGD/0 Code/Shiny Stats/Modified_Example/063-superzip-example/")
allzips <- readRDS("data/superzip2.rds")
allzips$latitude <- jitter(allzips$latitude)
allzips$longitude <- jitter(allzips$longitude)
allzips$college <- allzips$college * 100
allzips$zipcode <- formatC(allzips$zipcode, width=5, format="d", flag="0")
row.names(allzips) <- allzips$zipcode


cleantable <- allzips %>%
  select(
    City = city.x,
    State = state.x,
    Zipcode = zipcode,
    Rank = rank,
    Score = centile,
    Superzip = superzip,
    Population = adultpop,
    College = college,
    Income = income,
    Lat = latitude,
    Long = longitude,
    Foreclosures = Foreclosures,
    Delinquencies = Delinquencies,
    OpenMortgages = OpenMortgages,
  )
