# Introduction

The data used in this project are described and come from the following study :
https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption

This is the code book that describes the variables, the data, and any transformations or work that I performed to clean up the data.

-----------------------------------------------

# Estimate of memory needed

The dataset has 2.075.259 rows and 9 columns (7 with numeric and 2 with 8 and 10 characters).
To estimate how much memory the dataset will require in memory, 
I do the following calculus :

2075259 * 7 * 8 bytes/numeric + 2075259 * 1 *  8 bytes/string + 2075259 * 1 *  10 bytes/string  = 153569166 B
153569166 / (2^20) ~ 146 MB

So you should have about 2*146 MB available to download this file on your computer.

-----------------------------------------------

# Manipulation of data

1) First, I got the data from the following link :
https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

2) If first downloaded data and unzipped it.
```javascript
    fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    download.file(fileUrl, destfile = "./ExData_Plotting1.zip")
    unzip("./ExData_Plotting1.zip") 
``` 

3) Then I read the .txt file it contained.
```javascript
data <- fread("./household_power_consumption.txt", na.strings = "?")
``` 

4) I selected only the rows for "01/02/2007" and "02/02/2007" dates (those needed).
```javascript
data2 <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007"]
``` 

5) I added a 10th column named "DateTime" where I merged Date and Time data in datetime format.
```javascript
data2 <- mutate(data2, DateTime = dmy_hms(paste(data2$Date, data2$Time)))
``` 


