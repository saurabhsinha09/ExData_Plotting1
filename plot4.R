# Loading the source file used for the current script
# Calling the Filterdata function for required data
# Creating the plot

source("Filterdata.R")

plot4 <- function() {
        Febpowerdata <- Filterdata()
		#Initializing the plot4.png file
        png(filename = "plot4.png", width = 480, height = 480, units = "px")
        #setting the number of rows, margin and outer margin as per the requirement
        par (mfrow = c(2,2), mar = c(4,4,2,1), oma = c(0,0,2,0))
		
        with(Febpowerdata, {
		        #creating the plot for Global_active_power
                plot(DateTime, Global_active_power, xlab="", ylab="Global Active Power", type="l")
				#creating the plot for Voltage
                plot(DateTime, Voltage, xlab="datetime", ylab="Voltage", type="l")
                #creating the plot for Sub_metering_1
                plot(DateTime, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
				#adding the line graph for Sub_metering_2
                lines(DateTime, Sub_metering_2, type="l", col="red")
				#adding the line graph for Sub_metering_3
                lines(DateTime, Sub_metering_3, type="l", col="blue")
				#adding the legend in the graph 
                legend("topright", lty=1, lwd=1, col=c("black","blue","red"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty="n")
                #creating the plot for Global_reactive_power
                plot(DateTime, Global_reactive_power, xlab="datetime", ylab="Global_reactive_power", type="l")        
        })    
        dev.off()
}

plot4()