# ANALISIS

#library(dplyr)
#library(readr)

library(tidyverse)

options(scipen = 1234)

datos <- read_csv("data/eleccion_presi_1952.csv")


datos %>% 
  mutate(totales = sum(votos), 
         participacion = totales/electores, 
         pct = round(votos/totales, 3)*100) %>% 
  write_csv("data/datosConPorcentaje.csv")



