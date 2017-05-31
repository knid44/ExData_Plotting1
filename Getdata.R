###########################################################

# Coursera Exploratory Data Analysis
# Course Project 1

###########################################################

# This script sets up workspace and data acquisition
# Use with scripts plot1.R, plot2.R, etc.

# 1. Clear workspace
rm(list = ls(all = TRUE))

# 2. Check working directory
getwd()

# 3. Download data from URL into current working directory
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "./temp.zip", method = "curl")

# 4. Unzip file
unzip("./temp.zip")

# 5. Read data as data table - this is a large dataset
tempdata <- read.table("./household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")

# 6. Subset data for only February 1st and 2nd, 2007
mydata <- tempdata[tempdata$Date %in% c("1/2/2007", "2/2/2007"), ]

# 7. Remove tempdata to keep Environment neat
rm(tempdata)