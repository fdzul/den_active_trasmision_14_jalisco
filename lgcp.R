load("/Users/felipedzul/Library/CloudStorage/OneDrive-Personal/proyects/geocoding_mex/2024/8.RData/denmex_2024.RData")
# Step 2. set the onset variable
z_acum <- z |>
    dplyr::mutate(onset = lubridate::ymd(FEC_INI_SIGNOS_SINT)) |>
    dplyr::filter(ESTATUS_CASO %in% c(2))  |>
    dplyr::mutate(x = long, y = lat)
lgcp_acum <- denhotspots::spatial_lgcp(dataset = z_acum,
                                       locality = c("Guadalajara", "Zapopan",
                                                    "Tlaquepaque", "Tonalá"),
                                       cve_edo = "14",
                                       longitude = "long",
                                       latitude = "lat",
                                       k = 10,
                                       plot = FALSE,
                                       aproximation = "gaussian",
                                       integration = "eb",
                                       resolution = 0.025,  # 2.7km
                                       approach = "lattice",
                                       cell_size = 1000,
                                       name = "YlGnBu")

#lattice$gg_mesh
lgcp_acum$map


load("/Users/felipedzul/Library/CloudStorage/OneDrive-Personal/proyects/geocoding_mex/2024/8.RData/denmex_2024.RData")
z_month <- z |>
    dplyr::mutate(onset = lubridate::ymd(FEC_INI_SIGNOS_SINT)) |>
    dplyr::filter(ESTATUS_CASO %in% c(2))  |>
    dplyr::mutate(x = long, y = lat) |>
    dplyr::filter(SEM %in% c(seq(from = lubridate::epiweek(Sys.Date())-5, 
                                 to = lubridate::epiweek(Sys.Date()),
                                 by = 1)))

lgcp_month <- denhotspots::spatial_lgcp(dataset = z_month,
                                        locality = c("Guadalajara", "Zapopan",
                                                     "Tlaquepaque", "Tonalá"),
                                        cve_edo = "14",
                                        longitude = "long",
                                        latitude = "lat",
                                        k = 10,
                                        plot = FALSE,
                                        aproximation = "gaussian",
                                        integration = "eb",
                                        resolution = 0.025,  # 2.7km
                                        approach = "lattice",
                                        cell_size = 1000,
                                        name = "YlGnBu")
lgcp_month$map


load("/Users/felipedzul/Library/CloudStorage/OneDrive-Personal/proyects/geocoding_mex/2024/8.RData/denmex_2024.RData")

z_3week <- z |>
    dplyr::mutate(onset = lubridate::ymd(FEC_INI_SIGNOS_SINT)) |>
    dplyr::filter(ESTATUS_CASO %in% c(2))  |>
    dplyr::mutate(x = long, y = lat) |>
    dplyr::filter(SEM %in% c(seq(from = lubridate::epiweek(Sys.Date())-3, 
                                 to = lubridate::epiweek(Sys.Date()),
                                 by = 1)))


lgcp_3week <- denhotspots::spatial_lgcp(dataset = z_3week,
                                        locality = c("Guadalajara", "Zapopan",
                                                     "Tlaquepaque", "Tonalá"),
                                        cve_edo = "14",
                                        longitude = "long",
                                        latitude = "lat",
                                        k = 10,
                                        plot = TRUE,
                                        aproximation = "gaussian",
                                        integration = "eb",
                                        resolution = 0.025,  # 2.7km
                                        approach = "lattice",
                                        cell_size = 1000,
                                        name = "YlGnBu")
lgcp_3week$map
