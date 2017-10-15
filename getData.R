getData <- function(){
  
  # Getting required packages
  if (!require("data.table")) {
    install.packages("data.table")
  }
  if (!require("dplyr")) {
    install.packages("dplyr")
  }
  if (!require("datasets")) {
    install.packages("datasets")
  }
  if (!require("lubridate")) {
    install.packages("lubridate")
  }

  # Getting data  
  if (!file.exists("household_power_consumption.txt")) { 
    fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    download.file(fileUrl, destfile = "./ExData_Plotting1.zip")
    unzip("./ExData_Plotting1.zip") 
  }
  data <- fread("./household_power_consumption.txt", na.strings = "?")
  
  # Getting wanted dates
  data2 <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007"]
  
  # Convert character dates/times into real dates/times
  data2 <- mutate(data2, DateTime = dmy_hms(paste(data2$Date, data2$Time)))
  
  remove(data)
  
  # Return data
  data2
  
}