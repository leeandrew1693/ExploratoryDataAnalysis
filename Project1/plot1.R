source("generateSubset.R")

##This method downloads/reads the file
subset <- generateSubset()

png("plot1.png", width=480, height=480)
hist(as.numeric(subset$Global_active_power), col="red", main="Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()