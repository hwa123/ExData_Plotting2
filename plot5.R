setwd("~/R/Coursera/Exploratory Data Analysis/Project 2")

source("load_data.R")

subset<- NEI[NEI$fips == "24510",]

par("mar" = c(5,4,4,2) + 0.1)
png(filename = "./figure/plot5.png",
    width = 480, height = 480,
    units = "px")
motor <- grep("motor", SCC$Short.Name, ignore.case = T)
motor <- SCC[motor,]
motor <- subset[subset$SCC %in% motor$SCC,]

totalEmissions <- aggregate(motor$Emissions, list(motor$year), FUN = "sum")
plot(totalEmissions, type = "l", xlab = "Year", 
     main =  "Total Emissions from 1999 to 2008 in Baltimore City from\n motor vehicle sources",
     ylab = expression('Total PM'[2.5]*" Emission"))

dev.off()
