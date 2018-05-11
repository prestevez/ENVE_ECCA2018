# package installer

source("package_checker.R")

if(!is.null(not))
{
    cat(paste0("Packages not installed: ", not,
               "\nInstalling... ", not, "\n"))


    if("victim" %in% not)
    {
        install_victim <- TRUE
        not <- not[not != "victim"]
    } else {install_victim <- FALSE}

    ## Install all available on CRAN

    install.packages(not, repos = "https://cloud.r-project.org/")


    # Next, install custom package "victim" from github in not installed

    if(isTRUE(install_victim))
    {
     devtools::install_github("prestevez/victim")
    }

    # All packages should now be installed

    source("package_checker.R")

}
