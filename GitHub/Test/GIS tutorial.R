##Heuristic git exercise##
##This is a GIS project"

library(maptools)
library(spdep)
library(spgwr)
library(rgdal)

setwd()
US_GWR <-readShapeSpatial(file.choose())
names(US_GWR)
bwG <- gwr.sel(exam2_Da_1 ~ exam2_Da_4, data=US_GWR, gweight=gwr.Gauss, verbose=TRUE)
gwrG <- gwr(exam2_Da_1 ~ exam2_Da_4, data=US_GWR, bandwidth=42593, gweight=gwr.Gauss)

gwrG
names(gwrG)
names(gwrG$SDF)
spplot(gwrG$SDF, "localR2")
writeSpatialShape(gwrG$SDF, "GWR_Results")