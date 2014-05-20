# Bernard Romey, 09Apr14
# Module 4.  Filtering & subsetting data

# Import original data file for analysis
rbt <- read.csv("RBTBBC02.csv")

# Subset data for fish size by catagory
age_1 <- subset(rbt, Length_mm <= 60)
sm <- subset(rbt, Length_mm >= 80 & Length_mm < 260)
med <- subset(rbt, Length_mm >= 260 & Length_mm < 320)
lg <- subset(rbt, Length_mm >= 320)

# Events 1 & 2 are mark-recapture events, respectively 
event_1 <- subset(rbt, CaptureEvent == 1)
event_2 <- subset(rbt, CaptureEvent == 2)

# Trout recatpured during both event 1 & 2
recap <- subset(rbt, Recapture == "y")

