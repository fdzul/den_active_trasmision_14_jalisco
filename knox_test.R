library(magrittr)

load("/Users/felipedzul/Library/CloudStorage/OneDrive-Personal/proyects/geocoding_mex/2024/8.RData/denmex_2024.RData")

denhotspots::transmission_chains_map(geocoded_dataset = z,
                                     cve_edo = "14",
                                     locality = c("Guadalajara", "Zapopan",
                                                  "Tlaquepaque", "Tonalá"),
                                     dengue_cases = "Confirmado")


load("/Users/felipedzul/Library/CloudStorage/OneDrive-Personal/proyects/geocoding_mex/2024/8.RData/denmex_2024.RData")
z <- z |>
    dplyr::filter(SEM %in% c(seq(from = lubridate::epiweek(Sys.Date())-5, 
                                 to = lubridate::epiweek(Sys.Date()),
                                 by = 1)))
denhotspots::transmission_chains_map(geocoded_dataset = z,
                                     cve_edo = "14",
                                     locality = c("Guadalajara", "Zapopan",
                                                  "Tlaquepaque", "Tonalá"),
                                     dengue_cases = "Confirmado")

load("/Users/felipedzul/Library/CloudStorage/OneDrive-Personal/proyects/geocoding_mex/2024/8.RData/denmex_2024.RData")
library(magrittr)
z <- z |>
    dplyr::filter(SEM %in% c(seq(from = lubridate::epiweek(Sys.Date())-3, 
                                 to = lubridate::epiweek(Sys.Date()),
                                 by = 1)))

denhotspots::transmission_chains_map(geocoded_dataset = z,
                                     cve_edo = "14",
                                     locality = c("Guadalajara", "Zapopan",
                                                  "Tlaquepaque", "Tonalá"),
                                     dengue_cases = "Confirmado")
