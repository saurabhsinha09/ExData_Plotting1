# Loading the source file used for the current script
# Calling the Filterdata function for required data
# Creating the histogram

source("Filterdata.R")

plot1 <- function(){
        Febpowerdata <- Filterdata()   
		#Initializing the plot1.png file
        png(filename = "plot1.png", width = 480, height = 480, units = "px")
		#creating the histogram
        hist(Febpowerdata$Global_active_power, main="Global Active Power",xlab="Global Active Power (kilowatts)", col="red")
        dev.off()
}

plot1()