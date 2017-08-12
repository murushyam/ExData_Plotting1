# Assignment - 1


# Reads the entire dataset

HOUSEHOLD_data <- read.table("D:\\exploratory_R\\week 1\\household_power_consumption.txt", header = TRUE, sep = ';', na.strings = "?", check.names = FALSE, stringsAsFactors = FALSE, comment.char="", quote='\"')

str(HOUSEHOLD_data)

HOUSEHOLD_data$Date <- as.Date(HOUSEHOLD_data$Date, format="%d/%m/%Y")

# Subseting the required data
data <- subset(HOUSEHOLD_data, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))

str(data)

# Converts dates

date_time <- paste(as.Date(data$Date), data$Time)

data$Datetime <- as.POSIXct(date_time)

# Ploting data

plot(data$Global_active_power~data$Datetime, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")

## Saving data to file

dev.copy(png, file = "plot2.png", height = 480, width = 480)

dev.off()
dev.off()
dev.off()