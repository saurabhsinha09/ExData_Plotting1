# Loading the source file used for the current script
# Calling the Filterdata function for required data
# Creating the plot

source("Filterdata.R")

plot3 <- function() {
        Febpowerdata <- Filterdata()
		#Initializing the plot3.png file
        png(filename = "plot3.png", width = 480, height = 480, units = "px")
		#creating the plot for Sub_metering_1
        plot(Febpowerdata$DateTime, Febpowerdata$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
		#adding the line graph for Sub_metering_2
        lines(Febpowerdata$DateTime, Febpowerdata$Sub_metering_2, type="l", col="red")
		#adding the line graph for Sub_metering_3
        lines(Febpowerdata$DateTime, Febpowerdata$Sub_metering_3, type="l", col="blue")
		#adding the legend in the graph 
        legend("topright", lty=1, lwd=1, col=c("black","blue","red"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
        dev.off()
}

plot3()