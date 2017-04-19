generateSubset <- function() {
    filename <- "dataset.zip"

    ## Download and unzip the dataset:
    if (!file.exists(filename)){
        fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
        download.file(fileURL, filename, method="curl")
    }  
    if (!file.exists("household_power_consumption.txt")) { 
        unzip(filename) 
    }
    
    powerConsumption <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors = FALSE, dec=".")
    subset <- powerConsumption[powerConsumption$Date %in% c("1/2/2007","2/2/2007") ,]
    return(subset)
}