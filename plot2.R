library(data.table)
consumption <- fread("household_power_consumption.txt")
data <- consumption[66637:69516,]
png(filename="plot2.png",width=480,height=480,pointsize = 12)

date<-as.POSIXct(paste(data$Date,data$Time), format="%d/%m/%Y %H:%M:%S")

plot(date, data$Global_active_power,type="n",xlab=" ",ylab="Global Active Power(kilowatts) ")
lines(date,data$Global_active_power)

dev.off()



