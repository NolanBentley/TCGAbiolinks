#Prepare packages
if(!"pak"%in%installed.packages()){install.packages("pak")}
if(!"devtools"%in%installed.packages()){pak::pak("devtools")}

#Load current package
setwd("~/GitHub/TCGAbiolinks/")
devtools::document()
pak::local_install_deps(dependencies = T)

## Generate test data
devtools::load_all()
projects <- getGDCprojects()
queryAll <- GDCquery(
    project = sort(projects$id[grepl("TCGA",projects$id)]),
    data.category = "Transcriptome Profiling",
    data.type = "Gene Expression Quantification",
    workflow.type = "STAR - Counts",
    access = "open"
)
saveRDS(queryAll,file = "../queryAll.RDS")

## Extract and subset the test results
caseDf <- queryAll$results[[1]]

## Create groups of cases based on diverse data
caseDf$dataGroup <- paste0(
    caseDf$project,"_",caseDf$sample_type
)
caseDf <- caseDf[order(caseDf$dataGroup,caseDf$cases.submitter_id,caseDf$sample.submitter_id),]
uniDGs <- unique(caseDf$dataGroup)

## Number cases to allow for diverse selection
caseDf$numInDG <- NA
for(i in 1:length(uniDGs)){
    currDG <- caseDf$dataGroup ==uniDGs[i]
    caseDf$numInDG[currDG] <- 1:sum(currDG)
}

caseDf_sub <- caseDf[caseDf$numInDG<=2,]
if(any(duplicated(caseDf_sub$sample.submitter_id))){warning("Somehow there is a duplicated sample id")}

## Repeat search with diverse selection
querySub <- GDCquery(
    project = unique(caseDf_sub$project),
    data.category = "Transcriptome Profiling",
    data.type = "Gene Expression Quantification",
    workflow.type = "STAR - Counts",
    access = "open",
    barcode = caseDf_sub$sample.submitter_id
)
saveRDS(querySub,file = "../querySub.RDS")
GDCdownload(query = querySub, method = "api", files.per.chunk = 10)
dds1 <- GDCprepare(query = querySub)


