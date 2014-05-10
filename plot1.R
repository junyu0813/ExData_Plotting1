# In this program,  the data“Individual household electric power consumption Data Set” will be used. 
# Plot1 is to plot the household energy usage varies over a 2-day period in February, 2007.

# set default directory
setwd("C:/Users/Junyu/Documents/GitHub/ExData_Plotting1")
# Load the downloaded dataset. Only part of the whole dataset. The data we need is in this part.
df <- read.table("household_power_consumption.txt", header=T, nrows=75000, sep=";")

# Subset the data
df <-df[df$Date=="1/2/2007" | df$Date=="2/2/2007",]

# Convert the data Global Active Power into the suitable data format
gap<-as.vector(df[,3])
gap <-as.numeric(as.vector(df[,3]))

# Plot the graph
png(filename = "plot1.png")
hist(gap, main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)")
dev.off()
