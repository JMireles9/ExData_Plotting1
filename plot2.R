library(data.table)

data<-fread("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")

subdata<-subset(data,Date="1/2/2007"|Date=="2/2/2007")

rm(data)

with(subdata,plot(Global_active_power,main="Global Active power",col="black",
	type="l",xlab="",ylab="Global Active Power (kilowatts)"))

dev.copy(png,"plot2.png")

dev.off()
