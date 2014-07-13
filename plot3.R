## Description: Measurements of electric power consumption 
## in one household with a one-minute sampling rate over a 
## period of almost 4 years. Different electrical quantities 
## and some sub-metering values are available.

## Plots a line graph of 3 energy sub metering variables from Thursday to Saturday

energy <- read.table("../household_power_consumption.txt", sep=";", header = TRUE, stringsAsFactors = FALSE)
data <- energy[energy$Date == "1/2/2007" | energy$Date == "2/2/2007" ,]
data[,7] <- as.numeric(data[,7])
data[,8] <- as.numeric(data[,8])
data[,9] <- as.numeric(data[,9])
plot(data[,7], type="l", xaxt='n', ylab="Energy sub metering", xlab="", cex.lab=0.8, cex.axis=0.8)
axis(1, labels=c("Thu","Fri","Sat"), at=c(0,1440,2880), cex.lab=0.8, cex.axis=0.8)
lines(data[,8], col="red")
lines(data[,9], col="blue")
legend("topright", names(data)[7:9], col=c('black', 'red', 'blue'), lty=1, cex=0.8)
dev.copy(png, file ="plot3.png")
dev.off()