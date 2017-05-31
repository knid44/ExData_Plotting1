###########################################################

# Coursera Exploratory Data Analysis
# Course Project 1

###########################################################

# This script creates the fourth visualization for the course project and
# prints it to a 480x480 PNG file

png("plot4.png", width = 480, height = 480)

# sets four visualizations in same device
par(mfrow = c(2,2))

# plot 1 (top left)
plot(mydata$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xaxt = "n", xlab = "")
axis(1, at = c(0, 1500, 2880), labels = c("Thu", "Fri", "Sat"))

# plot 2 (top right)
plot(mydata$Voltage, type = "l", ylab = "Voltage", xaxt = "n", xlab = "datetime")
axis(1, at = c(0, 1500, 2880), labels = c("Thu", "Fri", "Sat"))

# plot 3 (bottom left)
plot(mydata$Sub_metering_1, type = "l", ylab = "Energy sub metering", xaxt = "n", xlab = "")
lines(mydata$Sub_metering_2, col = "red")
lines(mydata$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = c(1, 1, 1))
axis(1, at = c(0, 1500, 2880), labels = c("Thu", "Fri", "Sat"))

# plot 4 (bottom right)
plot(mydata$Global_reactive_power, type = "l", xaxt = "n", xlab = "datetime")
axis(1, at = c(0, 1500, 2880), labels = c("Thu", "Fri", "Sat"))

dev.off()