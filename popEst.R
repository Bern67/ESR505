# Bernard Romey 5/15/14
# Population Estimate for Black Bear Lake

rbt <- read.csv("D:/R/R_DAnalysis/RBTBBC02.csv")

# Number of fish captured, and recapture in event 1 and 2. 
library(reshape2)
e12 <- dcast(rbt, CaptureEvent ~  Recapture, length)







