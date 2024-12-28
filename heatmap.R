


densnv::mp_heatmap(geocoded_datasets = z,
                   cve_edo = "14",
                   locality = c("Guadalajara", "Zapopan",
                                "Tlaquepaque", "Tonalá"),
                   status_caso = 2,
                   week = seq(from = 1, 
                              to = lubridate::epiweek(Sys.Date()),
                              by = 1),
                   zoom = NULL,
                   map_type = NULL,
                   alpha = 0.6,
                   static = FALSE,
                   palette = viridis::turbo)


densnv::mp_heatmap(geocoded_datasets = z,
                   cve_edo = "14",
                   locality = c("Guadalajara", "Zapopan",
                                "Tlaquepaque", "Tonalá"),
                   status_caso = 2,
                   week = seq(from = lubridate::epiweek(Sys.Date())-3, 
                              to = lubridate::epiweek(Sys.Date()),
                              by = 1),
                   zoom = NULL,
                   map_type = NULL,
                   alpha = 0.6,
                   static = FALSE,
                   palette = viridis::turbo)
