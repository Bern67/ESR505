# Bernard Romey 5/5/14
# Module 10: Functions

rbt <- read.csv("RBTBBC02.csv")


coolPlot1 <-function(rbt, Length_mm, Weight_g, RBT) {
  require(ggplot2)
  p <- ggplot(data = rbt, aes_string(x = Length_mm, y = Weight_g))
  p <- p + geom_point(color = "Darkgreen",na.rm = TRUE) 
  p <- p + stat_smooth(color = "red", na.rm = TRUE)
  p <- p + xlab("Length (mm)")+ ylab("Weight (g)")
  p <- p + theme_bw()
  p <- p + labs (title = RBT)
  print(p)
}
coolPlot1(rbt, "Length_mm", "Weight_g", "Rainbow Trout")


# Creates a new column of data for Fulton Condition (K).
Condition <-function(length, weight) {
  (10^5)*weight/length^3
}
FK <- Condition(rbt$Length_mm,rbt$Weight_g)
# used if want to round: FK <- round(FK)

FKrbt <- cbind(rbt, FK)


K <-  na.omit(rbt$FultonK)

p1 <- hist(K, breaks = 100, 
    xlim = c(min(K), max(K)), 
    freq = FALSE, 
    col = 'lightblue',
    main = 'Trout Condition (K)',
    xlab = 'Fulton K')
    lines(density(K, bw=.10), col='red', lwd= 2)
    box()

summary(K)
