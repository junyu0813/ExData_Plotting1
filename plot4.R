# In this program,  the data“Individual household electric power consumption Data Set” will be used. 
# Plot4 is to plot 4 figures in one plot.

# set default directory
setwd("C:/Users/Junyu/Documents/GitHub/ExData_Plotting1")
# Load the downloaded dataset. Only part of the whole dataset. The data we need is in this part.
df <- read.table("household_power_consumption.txt", header=T, nrows=75000, sep=";")

# Subset the data
df <-df[df$Date=="1/2/2007" | df$Date=="2/2/2007",]
x <- strptime(paste(df$Date, df$Time), format='%d/%m/%Y %H:%M:%S')

# Prepare data
#plot1
gap<-as.vector(df[,3])
gap <-as.numeric(as.vector(df[,3]))

#plot3
leg.tex <-c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

# Plot all figures
png(filename = "plot4.png")
par(mfrow=c(2, 2))

#plot1
plot(x, df[,3], type="l", xlab="", ylab="Global Active Power (kilowatts)")
#plot2
plot(x, df[,5], type="l", xlab="datetime", ylab="Voltage")
#plot3
plot(x, df[,7], type="l", xlab="", ylab="Energy sub metering")
points(x, df[,8], type="l", col="red")
points(x, df[,9], type="l", col="blue")
legend("topright",legend = leg.tex, pch="_", text.col=c("black", "red", "blue"))
#plot4
plot(x, df[,4], type="l", xlab="datetime", ylab="Global_rective_power (kilowatts)")
# Turn off
dev.off()
