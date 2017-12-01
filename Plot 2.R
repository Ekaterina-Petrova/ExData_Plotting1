setwd('C:/Users/petrova/Desktop/temp/R')
png(file="Plot 2.png", width = 480, height = 480)
dt <- read.csv('household_power_consumption.txt', header = TRUE, sep=';')
dtday <- subset(dt, dt$Date %in% c('1/2/2007','2/2/2007'))
Sys.setlocale("LC_ALL","English")
dtday$DateTime <- as.POSIXct(paste(as.Date(dtday$Date,format = "%d/%m/%Y"), dtday$Time))
plot((as.numeric(as.character(dtday$Global_active_power))) ~ dtday$DateTime, xlab = '', ylab = 'Global Active Power (kilowatts)', type='l')

dev.off()