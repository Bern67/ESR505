# Bernard Romey 5/14/14
# Module 13: Mapping in R

# package of maps
library(maps)
library(mapdata)
library(ggplot)
library(gridExtra)

# AK state map
akmap <- map("worldHires", "canada",
            xlim=c(-180,-130), ylim=c(50, 71),
            col="gray90", fill=TRUE)
akmap <- map("worldHires", "usa",
            xlim=c(-180,-130), ylim=c(50, 71),
            col="tan", fill=TRUE, add=TRUE)
map.scale(-178.9,70.7, ratio=FALSE, relwidth=0.25, cex=.5)
akmap_lat <- 55.541175
akmap_lon <- -132.855405
points(akmap_lon, akmap_lat, col = "yellow",bg="red", pch = 21, cex = 1.2)
map.axes()
box()

# Map of Southeast AK
seakmap <- map("worldHires", "canada",
    xlim=c(-141,-129), ylim=c(54, 60),
    col="gray90", fill=TRUE)
seakmap <- map("worldHires", "usa",
    xlim=c(-141,-129), ylim=c(54, 60),
    col="tan", fill=TRUE, add=TRUE)
map.scale(-140.5,60, ratio=FALSE, relwidth=0.3, cex=0.75)
seakmap_lat <- 55.541175
seakmap_lon <- -132.855405
points(seakmap_lon, seakmap_lat, col = "yellow",bg="red", pch = 21, cex = 1.2)
map.axes()
box()

# Create grid for inlay maps
grid.newpage()
vp_seak <- viewport(width = 1, height = 1, x = 0.5, y = 0.5) # the larger map
vp_ak <- viewport(width = 0.3, height = 0.3, x = 0.6, y = 0.4) # the inset

# plot the maps to each view point
print(seakmap, vp = vp_seak)
print(akmap, vp = vp_ak)


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


# Google topo of Black Bear Lake
library(ggmap)
bbl <- get_map("Black Bear Lake, Prince of Wales-Outer Ketchikan, AK",zoom = 14)
ggmap(bbl)



