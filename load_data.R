setwd("~/R/Coursera/Exploratory Data Analysis/Project 2")

if(!"NEI" %in% ls()) {
  NEI <- readRDS("summarySCC_PM25.rds")
}

if(!"SCC" %in% ls()) {
  SCC <- readRDS("Source_Classification_Code.rds")
}

