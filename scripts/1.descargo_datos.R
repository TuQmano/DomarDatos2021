# DESCARGA DE DATOS

library(electorAr)
library(readr)

show_available_elections(source = "results")


datos <- get_election_results("arg",      "presi",    "gral",   1951)


write_csv(x = datos,file = "data/eleccion_presi_1952.csv" )
