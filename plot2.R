plot2 <- function(){
  
  source("getData.R")
  data2 <- getData()
  
  # We get the os to know which screen device to open
  os <- Sys.info()['sysname']
  if (os == "Windows") windows()
  if (grepl("^[Dd]arwin", os)) quartz()
  if (grepl("linux-gnu", os)) x11()
  
  with(data2, plot(DateTime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)"))

  # Copying the plot into png file
  dev.copy(png, file="./plot2.png", width = 480, height = 480)
  
  # Closing both png and window
  dev.off() 
  #dev.off(dev.prev())  

  
}