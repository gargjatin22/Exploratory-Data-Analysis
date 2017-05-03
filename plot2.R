
#setwd("C:/Users/jatin/Documents/Rcode/NEI_data")
#rm(list = ls())
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

NEI$year = as.factor(NEI$year)

BaltimoreCity <- subset(NEI, fips == "24510")



totalemission <- tapply(BaltimoreCity$Emissions , BaltimoreCity$year, sum)

png(filename='plot2.png')
barplot(totalemission,col = 1:4,
        main='Total Emission in Baltimore City, MD', 
        xlab='Year', ylab=expression('PM'[2.5]))
dev.off()