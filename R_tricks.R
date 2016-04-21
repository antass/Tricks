### Tidy ugly R code
library(formatR)
tidy.source(source="infile.R", file="outfile.R")


### Read arguments from the command line
exmpl.R 2010-01-28 example 100

options(echo=TRUE)  # if you want to see commands in output file
args <- commandArgs(trailingOnly = TRUE)
print(args)
# trailingOnly=TRUE means that only your arguments are returned, check:
# print(commandsArgs(trailingOnly=FALSE))
# call args by place in list
start_date <- as.Date(args[1])
name <- args[2]
n <- as.integer(args[3])

### Calculate an element by element average of matrices in a list (mylist)
# ommits NA's and calculates average based on reduced sum of elements
# ex. ave[2,5] = ave(a[2,5], b[2,5])
library(WGCNA)
do.call(pmean, mylist)

### Convert gene IDs with biomaRt
library(biomaRt)
listMarts(host = "jul2015.archive.ensembl.org")  # main source doesn't work
ensembl <- useMart(mart="ENSEMBL_MART_ENSEMBL", dataset="hsapiens_gene_ensembl", host="jul2015.archive.ensembl.org")
# get name of ensembl ID variable (filters = FROM)
filters = listFilters(ensembl)
head(filters)
filters[grep("u133a", filters$name), ]  # 163 is affy_hg_u133a
# get name of HGNC Symbols variable (attributes = TO; should include all ID kinds that you wnat in final output (including original IDs)
attributes = listAttributes(ensembl)
head(attributes)
attributes[ grep("symbol", attributes$name), ]  # 66 is hgnc_symbol

Symbol <- getBM(attributes=c("ensembl_gene_id", "hgnc_symbol"), filters = 'ensembl_gene_id', values = colnames(network_cancer), mart = ensembl)

