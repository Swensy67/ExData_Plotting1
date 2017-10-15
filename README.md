# Introduction

This repo contains the work I did for the course project n°1 of "Exploratory Data Analysis" lecture on Coursera.

------------------------------------------

# Content of the repo

This repo contents :
- Files from the original repo from R. Peng :
    * README(RPeng).md
    * figure
- Files that I added :
    - README.md
    - COPYBOOK.md
    - The scripts to run :
        * getData.R (I added this script so that my other scripts are easier to read)
        * plot1.R
        * plot2.R
        * plot3.R
        * plot4.R
    - Pictures :
        * plot1.png
        * plot2.png
        * plot3.png
        * plot4.png

------------------------------------------

# How to run the scripts

All of scripts must be in your working directory.
You don't need to install or load any library as the code do it for you.
Each plot*.R script runs getData.R.
getData.R gets and cleans the data before to go back to the plot*.R.
Then, the plot*.R displays the plot on the screen, following the os you have and copy it in a png format to your working directory.


You may have some problems displaying plots if you are on Mac or Linux. I added the following code in the plot*.R : 
```javascript
  os <- Sys.info()['sysname']
  if (os == "Windows") windows()
  if (grepl("^[Dd]arwin", os)) quartz()
  if (grepl("linux-gnu", os)) x11()
``` 

so that my code can display plots on any os. But I couldn't test it as I'm on Windows only. You may have to change it.

