# In this program,  the data“Individual household electric power consumption Data Set” will be used. 
# Plot3 is to plot Sub Meting 1-3 over a 2-day period in February, 2007.

# set default directory
setwd("C:/Users/Junyu/Documents/GitHub/ExData_Plotting1")
# Load the downloaded dataset. Only part of the whole dataset. The data we need is in this part.
df <- read.table("household_power_consumption.txt", header=T, nrows=75000, sep=";")

# Subset the data
df <-df[df$Date=="1/2/2007" | df$Date=="2/2/2007",]
x <- strptime(paste(df$Date, df$Time), format='%d/%m/%Y %H:%M:%S')



