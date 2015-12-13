library(data.table)

data<-fread("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")

subdata<-subset(data,Date="1/2/2007"|Date=="2/2/2007")

rm(data)

with(subdata,hist(Global_active_power,main="Global Active power",col="red",
	xlab="Global Active Power (kilowatts)"))

dev.copy(png,"plot1.png")

dev.off()
