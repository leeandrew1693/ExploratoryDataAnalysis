source("generateSubset.R")

##This method downloads/reads the file
subset <- generateSubset()

png("plot2.png", width=480, height=480)
datetime <- strptime(paste(subset$Date, subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
plot(datetime, subset$Global_active_power, type="l", xlab = "", ylab="Global Active Power(kilowatts)")
dev.off()