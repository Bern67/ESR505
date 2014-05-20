# Bernard Romey 5/15/14
# Population Estimate for Black Bear Lake

rbt <- read.csv("D:/R/ESR505/RBTBBC02.csv")

library(reshape2)
# Number of fish captured, and recapture in event 1 and 2.
ce12 <- dcast(rbt, CaptureEvent ~  Recapture, length)

# m-Number of tagged fish released during first event
# c-Number of fish examined for tags during second event (including recaptures)
# 27 fish removed that were double counted
# r-number recaptured during second sample (fish marked in first sample)
# N-Closed population two-event mark-recapture abundance estimate.
m <- ce12$n[1]
c <- (ce12$n[2]+ce12$y[2])-27
r <- ce12$y[2]
N <-(m+1)*(c+1)/(r+1)

# Variance of the CP estimate
v <- (N^2*(c-r))/((c+1)*(r+2))
se <- v^(1/2)

# 95% CI for population estimate.
ci95u <- N+1.962*(se)
ci95l <- N-1.962*(se)

