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
