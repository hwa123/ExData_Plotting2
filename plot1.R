setwd("~/R/Coursera/Exploratory Data Analysis/Project 2")

source("load_data.R")

par("mar" = c(5,4,4,2) + 0.1)
png(filename = "./figure/plot1.png",
    width = 480, height = 480,
    units = "px")
totalEmissions <- aggregate(NEI$Emissions, list(NEI$year), FUN = "sum")

plot(totalEmissions, type = "l", xlab = "Year", 
     main =  "Total Emissions from 1999 to 2008 in United States",
     ylab = expression('Total PM'[2.5]*" Emission"))
dev.off()
