# Test data for "Around"
# Author: Alexander Sheludkov
# Date: 3 April 2018

library(sp)
library(raster)
library(rgdal)
library(dplyr)

# reading data
museums <- shapefile("data/museums.shp")
plot(museums)
museums@data %>% select(id, name) -> museums@data

# write
writeOGR(museums, "data/moscow_museums.geojson", 
         layer = "moscow_museums.geojson",
         overwrite_layer = T, driver = "GeoJSON")
