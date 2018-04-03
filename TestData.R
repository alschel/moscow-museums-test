# Test data for "Around"
# Author: Alexander Sheludkov
# Date: 3 April 2018

setwd("Desktop/JS/Around")


library(sp)
library(raster)
library(rgdal)
library(dplyr)

# reading data
museums <- shapefile("data/museums.shp")
plot(museums)
museums@data %>% select(id, name, opening_ho) -> museums@data

museums@data %>% mutate(n_users = floor(runif(nrow(museums@data), min=1, max=101))) -> museums@data

museums@data %>% View()

# write
writeOGR(museums, "data/moscow_museums.geojson", 
         layer = "moscow_museums.geojson",
         overwrite_layer = T, driver = "GeoJSON")
