## Description: Measurements of electric power consumption 
## in one household with a one-minute sampling rate over a 
## period of almost 4 years. Different electrical quantities 
## and some sub-metering values are available.

## Plots a histogram of Global Active Power

energy <- read.table("../household_power_consumption.txt", sep=";", header = TRUE, stringsAsFactors = FALSE)
data <- energy[energy$Date == "1/2/2007" | energy$Date == "2/2/2007" ,]
data[,3] <- as.numeric(data[,3])
hist(data[,3], col ="red", breaks = 12, xlab="Global Active Power (kilowatts)", main= "Global Active Power", xaxt = 'n', cex.lab=0.8, cex.axis=0.8, cex.main=0.9)
axis(1,c(0,2,4,6), cex.axis=0.8)
dev.copy(png, file ="plot1.png", width=480, height=480)
dev.off()