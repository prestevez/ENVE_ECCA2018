# Package checker script

packages <- c("devtools",
              "victim",
              "foreign",
              "tidyverse",
              "Cairo",
              "knitr",
              "lazyeval",
              "RCurl",
              "glmmTMB",
              "classInt",
              "foreign",
              "reshape2",
              "lmtest",
              "car", 
              "downloader")

test <- packages %in% rownames(installed.packages())

if(all(test))
{
    cat("All required packages are installed.\n")
    not <- NULL
} else
{
    not <- packages[which(test == FALSE)]
    cat(paste0("Packages not installed: ", not,
               ". \nPlease install them manually.\n"))
}
