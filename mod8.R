# Bernard Romey, 21Apr14
# Module 8: Loops & Flow Control

# Import original data file for analysis
rbt <- read.csv("RBTBBC02.csv")


library(dplyr)
FK <- rbt %.% filter(Recapture == "n") %.% select(CaptureEvent, CaptureLocation, FultonK) 
FK <- na.omit(FK) 

FK$status <-"good"
FK[FK$FultonK < 1.0,]$status <- "skinny"
FK[FK$FultonK >= 1.0,]$status <- "healthy"

FK$K <- ifelse(FK$FultonK<1, "poor", "good")
View(FK)


