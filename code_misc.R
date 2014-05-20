
# code to save a file as pdf with border geometry
knitsPDF <- function(name) {
  library(knitr)
  knit(paste0(name, ".Rmd"), encoding = "utf-8")
  system(paste0("pandoc -V geometry:margin=0.75in -o", name, ".pdf ", name, ".md"))
}


# code for installing packages that are not already installed
usePackage <- function(p) {
  if (!is.element(p, installed.packages()[,1]))
    install.packages(p, dep = TRUE)
  require(p, character.only = TRUE)
}