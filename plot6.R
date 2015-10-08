setwd("~/R/Coursera/Exploratory Data Analysis/Project 2")

source("load_data.R")

<<<<<<< HEAD
library(ggplot2)

subset <- NEI[NEI$fips == "24510"|NEI$fips == "06037",]

par("mar" = c(5,4,4,2) + 0.1)
png(filename = "./figure/plot6.png",
    width = 480, height = 480,
    units = "px", bg = "transparent")

=======
subset<- NEI[NEI$fips == "24510"|NEI$fips == "06037",]

library(ggplot2)
par("mar" = c(5,4,4,2) + 0.1)
png(filename = "./figure/plot6.png",
    width = 480, height = 480,
    units = "px")
>>>>>>> 595ccf480584dcf0a2cfd5cceaccedf24c700579
motor <- grep("motor", SCC$Short.Name, ignore.case = T)
motor <- SCC[motor,]
motor <- subset[subset$SCC %in% motor$SCC,]

g <- ggplot(motor, aes(year, Emissions, color = fips))
<<<<<<< HEAD

print(g + geom_line(stat = "summary", fun.y = "sum") + 
  ylab(expression('Total PM'[2.5]*" Emission")) + 
  ggtitle("Comparison Emissions from motor vehicle sources in\n Baltimore City vs. Los Angeles County") +
  scale_colour_discrete(name = "Group", label = c("Los Angeles", "Baltimore")))
=======
g + geom_line(stat = "summary", fun.y = "sum") + 
  ylab(expression('Total PM'[2.5]*" Emission")) + 
  ggtitle("Comparison Emissions from motor vehicle sources in\n Baltimore City vs. Los Angeles County") +
  scale_colour_discrete(name = "Group", label = c("Los Angeles", "Baltimore"))
>>>>>>> 595ccf480584dcf0a2cfd5cceaccedf24c700579

dev.off()
