source("generateSubset.R")

##This method downloads/reads the file
subset <- generateSubset()

png("plot3.png", width=480, height=480)
datetime <- strptime(paste(subset$Date, subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
plot(datetime, as.numeric(subset$Sub_metering_1), type="l", ylab="Energy sub metering", xlab ="")
lines(datetime, as.numeric(subset$Sub_metering_2), col='red')
lines(datetime, as.numeric(subset$Sub_metering_3), col='blue')
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()