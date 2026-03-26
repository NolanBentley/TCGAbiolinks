#Prepare packages
if(!"pak"%in%installed.packages()){install.packages("pak")}
if(!"devtools"%in%installed.packages()){pak::pak("devtools")}

#Load current package
setwd("~/GitHub/TCGAbiolinks/")
devtools::document()
pak::local_install_deps(dependencies = T)

## Generate test data
devtools::load_all()
