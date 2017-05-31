###########################################################

# Coursera Exploratory Data Analysis
# Course Project 1

###########################################################

# This script creates the third visualization for the course project and
# prints it to a 480x480 PNG file

png("plot3.png", width = 480, height = 480)
plot(mydata$Sub_metering_1, type = "l", ylab = "Energy sub metering", xaxt = "n", xlab = "")
lines(mydata$Sub_metering_2, col = "red")
lines(mydata$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = c(1, 1, 1))
axis(1, at = c(0, 1500, 2880), labels = c("Thu", "Fri", "Sat"))
dev.off()