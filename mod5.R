# Bernard Romey, 13Apr14
# Module 5.  Reshaping Data

# Import original data file for analysis
rbt <- read.csv("RBTBBC02.csv")


library(reshape2)

rbt2 <- dcast(rbt, CaptureEvent + Date ~  CaptureLocation, na.rm = TRUE, value.var = "Length_mm", fun.aggregate = mean)

local_count <- dcast(rbt, CaptureEvent + Date ~  CaptureLocation, length)

local_count1 <- dcast(rbt, CaptureEvent ~  CaptureLocation, length)


length_mean <- melt(rbt2, id = c("CaptureEvent", "Date"), variable.name = "CaptureLocation", value.name = "Length_mm")


