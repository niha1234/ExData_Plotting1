#Rcode for Plot2

hpc<-read.csv("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?",dec=".",stringsAsFactors=FALSE)
hpcSub2=subset(hpc,Date=="1/2/2007"|Date=="2/2/2007")
DateTime=paste(hpcSub2$Date,hpcSub2$Time)

dt<-data.frame(DateTime=DateTime,GAP=hpcSub2$Global_active_power)

plot(dt$DateTime,dt$GAP, type="l", xaxt="n",xlab="DateTime",ylab="Global Active Power")

axis.POSIXct(1, dt$DateTime, format="%a")
lines(dt$DateTime,dt$GAP)
dev.copy(png,file="plot2.png",width=480,height=480)
dev.off()


