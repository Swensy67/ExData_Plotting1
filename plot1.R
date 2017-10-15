plot1 <- function(){
  
  source("getData.R")
  data2 <- getData()
  
  # We get the os to know which screen device to open
  os <- Sys.info()['sysname']
  if (os == "Windows") windows()
  if (grepl("^[Dd]arwin", os)) quartz()
  if (grepl("linux-gnu", os)) x11()
  
  # Plotting
  hist(data2$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
  
  # Copying the plot into png file
  dev.copy(png, file="./plot1.png", width = 480, height = 480)
  
  # Closing both png and window
  dev.off() 
  #dev.off(dev.prev())
  
}