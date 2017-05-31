###########################################################

# Coursera Exploratory Data Analysis
# Course Project 1

###########################################################

# This script creates the second visualization for the course project and
# prints it to a 480x480 PNG file

png("plot2.png", width = 480, height = 480)
plot(mydata$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xaxt = "n", xlab = "")
axis(1, at = c(0, 1500, 2880), labels = c("Thu", "Fri", "Sat"))
dev.off()
