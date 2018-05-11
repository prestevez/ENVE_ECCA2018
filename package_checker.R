# Package checker script

packages <- c("devtools",
              "victim",
              "foreign",
              "tidyverse",
              "Cairo",
              "knitr",
              "lme4",
              "lazyeval",
              "RCurl",
              "glmmTMB",
              "classInt",
              "foreign",
              "reshape2",
              "lmtest",
              "car")

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