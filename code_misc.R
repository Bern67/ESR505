
# code to save a file as pdf, or word docx with border geometry
knitsDoc <- function(name) {
  library(knitr)
  knit(paste0(name, ".Rmd"), encoding = "utf-8")
  system(paste0("pandoc -o ", name, ".docx ", name, ".md"))
}


knitsPDF <- function(name) {
  library(knitr)
  knit(paste0(name, ".Rmd"), encoding = "utf-8")
  system(paste0("pandoc -V geometry:margin=0.75in -o", name, ".pdf ", name, ".md"))
}


# convenience function to use instead of library which installs the package if it is missing, then requires it:
usePackage <- function(p) {
  if (!is.element(p, installed.packages()[,1]))
    install.packages(p, dep = TRUE)
  require(p, character.only = TRUE)
}

# Creates PDF file from markdown file with specified margin.
library(pander)
Pandoc.convert(f="BBLreport.md", format="pdf", options="-s -V geometry:margin=1in")

# Creates new dataframe and renames variables.
df_lw <- data.frame(l_mm = factor(rbt$Length_mm),  w_g = factor(rbt$Weight_g))
df_lw <-na.omit(df_lw)