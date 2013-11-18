### Tidy ugly R code
library(formatR)
tidy.source(source="infile.R", file="outfile.R")


### Read arguments from the command line
exmpl.R 2010-01-28 example 100

options(echo=TRUE) # if you want see commands in output file
args <- commandArgs(trailingOnly = TRUE)
print(args)
# trailingOnly=TRUE means that only your arguments are returned, check:
# print(commandsArgs(trailingOnly=FALSE))
# call args by place in list
start_date <- as.Date(args[1])
name <- args[2]
n <- as.integer(args[3])
