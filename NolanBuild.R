#Prepare packages
if(!"pak"%in%installed.packages()){install.packages("pak")}
if(!"devtools"%in%installed.packages()){pak::pak("devtools")}

#Build package
setwd("~/GitHub/TCGAbiolinks/")
devtools::document()
pak::local_install_deps(dependencies = T)
devtools::check()
devtools::install()
devtools::build(binary = F)
devtools::build(binary = T)

#Move build to shared file
file.copy(from = "C:/Users/Nolan/Documents/GitHub/TCGAbiolinks_2.37.1.zip",
          to = "Q:/Box Sync/Teaching/Bio321G/diffSeqProject/TCGAbiolinks-master.zip",
          overwrite = T)

#Code for testing installation from shared file
if(FALSE){
    download.file("https://utexas.box.com/shared/static/tccrgynmma5kzgc4v1fp4ahk9ucb0o1m.zip",destfile = "~/inb321g/project/TCGAbiolinks_2.37.1.zip")
    install.packages("~/inb321g/project/TCGAbiolinks_2.37.1.zip", repos = NULL, type = "win.binary")
}
