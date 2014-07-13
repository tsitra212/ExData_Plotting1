## Description: Measurements of electric power consumption 
## in one household with a one-minute sampling rate over a 
## period of almost 4 years. Different electrical quantities 
## and some sub-metering values are available.

## Plots 4 graphs related to household energies

energy <- read.table("../household_power_consumption.txt", sep=";", header = TRUE, stringsAsFactors = FALSE)
data <- energy[energy$Date == "1/2/2007" | energy$Date == "2/2/2007" ,]
data[,3] <- as.numeric(data[,3])
data[,4] <- as.numeric(data[,4])
data[,5] <- as.numeric(data[,5])
data[,7] <- as.numeric(data[,7])
data[,8] <- as.numeric(data[,8])
data[,9] <- as.numeric(data[,9])

par(mfcol = c(2,2))

## plot1
plot(data[,3], type="l", xaxt='n', ylab="Global Active Power", xlab="", cex.lab=0.8, cex.axis=0.8)
axis(1, labels=c("Thu","Fri","Sat"), at=c(0,1440,2880), cex.axis=0.8)

## plot2
plot(data[,7], type="l", xaxt='n', ylab="Energy sub metering", xlab="", cex.lab=0.8, cex.axis=0.8)
axis(1, labels=c("Thu","Fri","Sat"), at=c(0,1440,2880), cex.axis=0.8)
lines(data[,8], col="red")
lines(data[,9], col="blue")
legend("topright", names(data)[7:9], col=c('black', 'red', 'blue'), lty=1, cex=0.8, bty="n")

## plot3
plot(data[,5], type="l", xaxt='n', ylab="Voltage", xlab="datetime", cex.lab=0.8, cex.axis=0.8)
axis(1, labels=c("Thu","Fri","Sat"), at=c(0,1440,2880), cex.axis=0.8)

## plot4
plot(data[,4], type="l", xaxt='n', ylab="Global_reactive_power", xlab="datetime", cex.lab=0.8, cex.axis=0.8)
axis(1, labels=c("Thu","Fri","Sat"), at=c(0,1440,2880), cex.axis=0.8)