# Bernard Romey 5/14/14
# Module 13: Mapping in R

# package of maps
library(maps)
library(mapdata)

seAK <- map("worldHires", "canada",
            xlim=c(-180,-130), ylim=c(50, 71),
            col="gray90", fill=TRUE)

seAK <- map("worldHires", "usa",
            xlim=c(-180,-130), ylim=c(50, 71),
            col="tan", fill=TRUE, add=TRUE)

map.scale(-178.9,70.7, ratio=FALSE, relwidth=0.25, cex=1.0)
seAK_lat <- 55.541175
seAK_lon <- -132.855405
points(seAK_lon, seAK_lat, col = "yellow",bg="red", pch = 21, cex = 1.2)
map.axes()
box()


# Creates a map of Southeast AK for project report
library(maps)
library(mapdata)

seAK <- map("worldHires", "canada",
    xlim=c(-141,-129), ylim=c(54, 60),
    col="gray90", fill=TRUE)

seAK <- map("worldHires", "usa",
    xlim=c(-141,-129), ylim=c(54, 60),
    col="tan", fill=TRUE, add=TRUE)

map.scale(-140.5,60, ratio=FALSE, relwidth=0.3, cex=1.1)
map.axes()

seAK_lat <- 55.541175
seAK_lon <- -132.855405
points(seAK_lon, seAK_lat, col = "yellow",bg="red", pch = 21, cex = 1.3)
box()


# Close up map of POW SEAK
bbl <- map("worldHires", "canada",
           xlim=c(-134,-130), ylim=c(54.5, 56.5),
           col="gray90", fill=TRUE)

bbl <- map("worldHires", "usa",
           xlim=c(-134,-130), ylim=c(54.5, 56.5),
           col="tan", fill=TRUE, add=TRUE)

map.scale(-133.9,56.5, ratio=FALSE, relwidth=0.3, cex=1.1)
map.axes()

bbl_lat <- 55.541175
bbl_lon <- -132.855405
points(bbl_lon, bbl_lat, col = "yellow",bg="red", pch = 21, cex = 1.7)
box()


library(ggmap)
bbl <- get_map("Black Bear Lake, Prince of Wales-Outer Ketchikan, AK",zoom = 14)
ggmap(bbl)
