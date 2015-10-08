setwd("~/R/Coursera/Exploratory Data Analysis/Project 2")

source("load_data.R")

par("mar" = c(5,4,4,2) + 0.1)
png(filename = "./figure/plot4.png",
    width = 480, height = 480,
    units = "px")
coal <- grep("coal", SCC$Short.Name, ignore.case = T)
coal <- SCC[coal,]
coal <- NEI[NEI$SCC %in% coal$SCC,]

totalEmissions <- aggregate(coal$Emissions, list(coal$year), FUN = "sum")
plot(totalEmissions, type = "l", xlab = "Year", 
     main =  "Total Emissions from 1999 to 2008 in United States from\n coal combustion-related sources",
     ylab = expression('Total PM'[2.5]*" Emission"))

dev.off()