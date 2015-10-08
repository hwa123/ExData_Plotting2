setwd("~/R/Coursera/Exploratory Data Analysis/Project 2")

source("load_data.R")

<<<<<<< HEAD
library(plyr)
library(ggplot2)

subset<- ddply(NEI[NEI$fips == "24510",],.(type,year), summarise,
               TotalEmissions = sum(Emissions))

png(filename = "./figure/plot3.png")

print(ggplot(subset, aes(year, TotalEmissions, color = type)) +
  geom_line() + geom_point() +  
  labs(title = "Total Emissions from 1999 to 2008 in Baltimore City", 
       x = "Year", y = expression('Total PM'[2.5]*" Emission")))
=======
subset<- NEI[NEI$fips == "24510",]

library(ggplot2)
par("mar" = c(5,4,4,2) + 0.1)
png(filename = "./figure/plot3.png",
    width = 480, height = 480,
    units = "px")
g <- ggplot(subset, aes(year,Emissions, color = type))
g + geom_line(stat = "summary", fun.y = "sum") + 
  ylab(expression('Total PM'[2.5]*" Emission")) + 
  ggtitle("Total Emissions from 1999 to 2008 in Baltimore City")
>>>>>>> 595ccf480584dcf0a2cfd5cceaccedf24c700579

dev.off()