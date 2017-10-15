plot3 <- function(){
  
  source("getData.R")
  data2 <- getData()
  
  # We get the os to know which screen device to open
  os <- Sys.info()['sysname']
  if (os == "Windows") windows()
  if (grepl("^[Dd]arwin", os)) quartz()
  if (grepl("linux-gnu", os)) x11()
  
  with(data2, plot(DateTime, Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering"))
  with(data2, points(DateTime, Sub_metering_2, type = "l", col = "red"))
  with(data2, points(DateTime, Sub_metering_3, type = "l", col = "blue"))
  legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

  # Copying the plot into png file
  dev.copy(png, file="./plot3.png", width = 480, height = 480)
  
  # Closing both png and window
  dev.off() 
  #dev.off(dev.prev())  
  
}