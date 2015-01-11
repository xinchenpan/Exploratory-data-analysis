library(data.table)
consumption <- fread("household_power_consumption.txt")
data <- consumption[66637:69516,]
date<-as.POSIXct(paste(data$Date,data$Time), format="%d/%m/%Y %H:%M:%S")
png(filename="plot4.png",width=480,height=480,pointsize = 12)
par(mfrow=c(2,2),cex=0.7)
##1
plot(date, data$Global_active_power,type="n",xlab=" ",ylab="Global Active Power ")
lines(date,data$Global_active_power)
##2
plot(date, data$Voltage,type="n",xlab="datetime",ylab="Voltage")
lines(date,data$Voltage)
##3
plot(date,data$Sub_metering_1,type="n",xlab=" ",ylab="Energy sub metering ")
lines(date,data$Sub_metering_1)
lines(date,data$Sub_metering_2,col='red')
lines(date,data$Sub_metering_3,col='blue')
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c('black', 'red','blue' ),bty='n',lwd=2.5)

##4
plot(date,data$Global_reactive_power,type="n",xlab="datetime",ylab="Global reactive power ")
lines(date,data$Global_reactive_power)


dev.off()

