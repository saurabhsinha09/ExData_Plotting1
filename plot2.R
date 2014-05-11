# Loading the source file used for the current script
# Calling the Filterdata function for required data
# Creating the plot

source("Filterdata.R")

plot2 <- function() {
        Febpowerdata <- Filterdata()
		#Initializing the plot2.png file
        png(filename = "plot2.png", width = 480, height = 480, units = "px")
		#creating the plot for Global_active_power
        plot(Febpowerdata$DateTime, Febpowerdata$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
        dev.off()
}

plot2()