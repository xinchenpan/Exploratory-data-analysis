library(data.table)
consumption <- fread("household_power_consumption.txt")
data <- consumption[66637:69516,]

hist(as.numeric(data$Global_active_power),main ="Global Active Power",
     xlab = "Global Active Power(kilowatts) ",col="red")
dev.copy(png,file="plot1.png")
dev.off()
