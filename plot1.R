library(data.table)
consumption <- fread("household_power_consumption.txt")
data <- consumption[66637:69516,]
png(filename="plot1.png",width=480,height=480,pointsize = 12)
hist(as.numeric(data$Global_active_power),main ="Global Active Power",
     xlab = "Global Active Power(kilowatts) ",col="red")

dev.off()
