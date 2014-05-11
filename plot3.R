# In this program,  the data“Individual household electric power consumption Data Set” will be used. 
# Plot3 is to plot Sub Meting 1-3 over a 2-day period in February, 2007.

# set default directory
setwd("C:/Users/Junyu/Documents/GitHub/ExData_Plotting1")
# Load the downloaded dataset. Only part of the whole dataset. The data we need is in this part.
df <- read.table("household_power_consumption.txt", header=T, nrows=75000, sep=";")

# Subset the data
df <-df[df$Date=="1/2/2007" | df$Date=="2/2/2007",]
x <- strptime(paste(df$Date, df$Time), format='%d/%m/%Y %H:%M:%S')
leg.tex <-c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")


# Plot the graph
png(filename = "plot3.png")
plot(x, df[,7], type="l", xlab="", ylab="Energy sub metering")
points(x, df[,8], type="l", col="red")
points(x, df[,9], type="l", col="blue")
legend("topright",legend = leg.tex, pch="_", text.col=c("black", "red", "blue"))
dev.off()
