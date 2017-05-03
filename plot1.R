
#setwd("C:/Users/jatin/Documents/Rcode/NEI_data")
#rm(list = ls())
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

NEI$year = as.factor(NEI$year)

totalemission <- tapply(NEI$Emissions/1000 , NEI$year, sum)

png(filename='plot1.png')
barplot(totalemission,col = 1:4,
        main=expression('Total Emission of PM'[2.5]),
        xlab='Year', ylab=expression(paste('PM', ''[2.5], ' in Kilotons')))
dev.off()