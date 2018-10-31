# Package checker script

packages <- c("devtools",
              "foreign",
              "tidyverse",
              #"Cairo",
              "knitr",
              "lazyeval",
              "RCurl",
              #"glmmTMB",
              "classInt",
              "foreign",
              "reshape2",
              "lmtest",
              "car",
              "downloader",
              "sandwich")

test <- packages %in% rownames(installed.packages())

if(all(test))
{
    cat("All required CRAN packages are installed.\n")
    not <- NULL
} else
{
    not <- packages[which(test == FALSE)]
    cat(paste0("CRAN packages not installed: ", not,
               ". \nPlease install them manually.\n"))
}
