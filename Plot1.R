library(datasets)
# R code for Plot1
hpc<-read.csv("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?",dec=".",stringsAsFactors=FALSE)
hpcSub1=subset(hpc,Date=="1/2/2007"|Date=="2/2/2007")
with(hpcSub1,hist(Global_active_power,xlab="Global Active Power(Kilowatts)",ylab="Frequency",main="Global Active Power",col="red"))
dev.copy(png,file="plot1.png",width=480,height=480)
dev.off()

