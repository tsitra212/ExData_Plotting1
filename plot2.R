## Description: Measurements of electric power consumption 
## in one household with a one-minute sampling rate over a 
## period of almost 4 years. Different electrical quantities 
## and some sub-metering values are available.

## Plots a line graph of Global Active Power from Thursday to Saturday

energy <- read.table("../household_power_consumption.txt", sep=";", header = TRUE, stringsAsFactors = FALSE)
data <- energy[energy$Date == "1/2/2007" | energy$Date == "2/2/2007" ,]
data[,3] <- as.numeric(data[,3])
plot(data[,3], type="l", xaxt='n', ylab="Global Active Power (kilowatts)", xlab="")
axis(1, labels=c("Thu","Fri","Sat"), at=c(0,1440,2880))
dev.copy(png, file ="plot2.png", width=480, height=480)
dev.off()