
#setwd("C:/Users/jatin/Documents/Rcode/NEI_data")
#rm(list = ls())
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

NEI$year = as.factor(NEI$year)

BaltimoreCity <- subset(NEI, fips == "24510")

library(ggplot2)

png(filename='plot3.png')

ggplot(BaltimoreCity,aes(year,Emissions,fill=type))+facet_grid(. ~ type)+geom_bar(stat="identity") +
  labs(x="year", y=expression("Total PM"[2.5]*" Emission (Tons)")) +
  labs(title=expression("PM"[2.5]*" Emissions, Baltimore City 1999-2008 by Source Type"))

dev.off()