# setup tidy environment packages
library(tidyverse)
# setup XML task view
library(XML)
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
