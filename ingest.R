# setup tidy environment packages
library(tidyverse)
# setup XML task view
library(XML)
library(scraper)
# library(xml2)
# library(XML2R)

## Data Ingestion
xmlIngest <- "Permits_Printer-Job_Log.xml"
printer_data <- xmlParse(xmlIngest)
printer_dataTree <- xmlInternalTreeParse(xmlIngest)
# printer_data <- xmlParseDoc(xmlIngest, asText = TRUE)
## creates Class 'XMLInternalDocument' <externalptr>
printer_data <- xmlTreeParse(xmlIngest)
ingestedList <- xmlToList(printer_data, addAttributes = T)
ingestedXML_df <- xmlToDataFrame(printer_data)
# fails 'duplicate subscripts for columns'
xmlScraper <- scrape(file = xmlIngest, isXML = T)

# From Zeds CSV
## sourced from https://github.com/rstudio/webinars/blob/master/11-Getting-Data-into-R/3-tidyr.R
## Load csv & see what we get
permitsLog_ingest <- read_csv('Printer_Log-Permits.csv')
# done ingesting -- need code in R for XML to CSV conversion TODO