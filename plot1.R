###########################################################

# Coursera Exploratory Data Analysis
# Course Project 1

###########################################################

# This script creates the first visualization for the course project and
# prints it to a 480x480 PNG file

png("plot1.png", width = 480, height = 480)
hist(mydata$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")
dev.off()
