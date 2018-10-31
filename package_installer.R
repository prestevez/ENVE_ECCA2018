# package installer

source("package_checker.R")

if(!is.null(not))
{
    cat(paste0("CRAN packages not installed: ", not,
               "\nInstalling... ", not, "\n"))


    ## Install all available on CRAN

    install.packages(not, repos = "https://cloud.r-project.org/")


    # Next, install custom package "victim" from github in not installed

}

if(!"victim" %in% rownames(installed.packages()))
{
    # Install victim package to ensure latest version
    devtools::install_github("prestevez/victim")
}



# All packages should now be installed

source("package_checker.R")
