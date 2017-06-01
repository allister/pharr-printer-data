# Learning how to read CSV data within R.

setwd("~/GitHub/pharr-printer-data")
permitsPrinterCSV <- read.csv("Printer_Log-Permits.csv", header = T)
str(permitsPrinterCSV)
