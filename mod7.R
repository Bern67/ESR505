# Bernard Romey, 15Apr14
# Module 7.  Split, apply, combine

# Import original data file for analysis
rbt <- read.csv("RBTBBC02.csv")

rbt2 <- subset(rbt, Recapture == "n")


library(dplyr)

Capture_event <- rbt2 %.% filter(CaptureEvent == "1" & GearType == "f")

Fulton_K <- rbt2 %.% select(Date, CaptureEvent, FultonK)

Weight_g <- rbt2 %.% arrange(CaptureEvent, GearType, Weight_g)

mean_K <- rbt2 %.% group_by(CaptureEvent, CaptureLocation) %.% summarise(mean_k = mean(FultonK))

# Log transform Length and weight data
library(dplyr)
logLW <- rbt %.% select(Length_mm, Weight_g)%.% mutate(Length_mm=log(Length_mm), Weight_g=log(Weight_g))
logLW <- na.omit(logLW)
