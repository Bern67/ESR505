# Bernard Romey, 24Apr14
# Module 9; Plotting in R

# Import original data file
rbt <- read.csv("D:/R/R_DAnalysis/RBTBBC02.csv")


# create new dataset without missing data in Lenght
rbt_sub <- subset(rbt, Length_mm > 60 & Recapture == "n")

#Plot all fish lenght on weight
p1 <- plot(rbt$Length_mm ~ rbt$Weight_g,
  main="Regression of Weight on Length", col.main = "darkgreen", 
  xlab="Length (mm)", ylab="Weight (g)",
  col.lab="darkgreen", cex.lab=1.2)


library(ggplot2) 

# Regression of length on weight for all fish > 60 mm
qplot(log(Length_mm), log(Weight_g), data=rbt_sub, geom=c("point", "smooth"), 
      method="lm", formula=y~x,
      main="Regression of Weight on Length", 
      xlab="Ln Length (mm)", ylab="Ln Weight (g)")

library(sfsmisc)
library(Hmisc)
h1 <- histBxp(rbt$Length_mm, breaks=60,col="lightgrey", xlab="Length (mm)", main="Rainbow Trout",
        width=0.025, boxcol="cornsilk4",medcol="blue",medlwd=(3), staplelty=1) # need the sfsmisc package
        minor.tick(nx=2, ny=2, tick.ratio=1) #needs the Hmisc package


h2 <-histBxp(rbt$Weight_g, breaks=60,col="lightgrey", xlab="Weight (g)", main="Rainbow Trout Weight",
        width=0.025, boxcol="cornsilk4",medcol="blue",medlwd=(3), staplelty=1) # need the sfsmisc package
        minor.tick(nx=2, ny=2, tick.ratio=1) #needs the Hmisc package


# Regression by capture event
p3 <- ggplot(rbt, aes(log(Length_mm), log(Weight_g)))
p3 + geom_point(aes(colour = factor(CaptureEvent)))

# Histogram of fish lengths inlcuding kernel bandwidth curve estimation 
# from both catch events
p4 <- hist(rbt_sub$Length_mm, breaks = 100, 
     xlim = c(min(rbt_sub$Length_mm), max(rbt_sub$Length_mm)), 
     freq = FALSE, 
     col = 'lightblue',
     main = 'Trout Lenght Distribution',
     xlab = 'Length')
lines(density(rbt_sub$Length_mm, bw=6), col = 'red', lwd = 2)



