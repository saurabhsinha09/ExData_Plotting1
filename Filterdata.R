# Function is used to unzip the power consumption data in to current directory
# prerequisite is current directory should hold the "household_power_consumption.zip" folder
# reading the data from read.table method
# subsetting the data only of 1st and 2nd Feb of 2007
# writing the tidy data into csv.

Filterdata <- function(){
        filename <- "household_power_consumption.zip"
		#unzipping the file.
        unzipfile <- unzip(filename, "household_power_consumption.txt")
        #read the full data from text file with read.table csv
        powerdata <- read.table(".\\household_power_consumption.txt", sep = ";",header = TRUE,
                                na.strings = "?")
        names(powerdata)
		#Subsetting the data only of 1st and 2nd Feb
        Febpowerdata <- powerdata[powerdata$Date == "1/2/2007" | powerdata$Date == "2/2/2007", ]
		#Adding the Date and Time column values into one column DateTime.
        Febpowerdata$DateTime <- strptime(paste0(Febpowerdata$Date,Febpowerdata$Time), "%d/%m/%Y %H:%M:%S")
		#Writing into csv
        write.csv(Febpowerdata,"plotting_data.csv")
        Febpowerdata
}

