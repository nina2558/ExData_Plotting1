rm(list=ls())
gc()

install.packages("ggplot2")
install.packages("corrplot")
install.packages("lattice")
install.packages("tm")

library(ggplot2)
library(corrplot)
library(lattice)
library(RColorBrewer)
library(plyr)

power <- read.delim("~/Documents/power.txt", header=T, sep=";")
head(power,30)

power[is.na(power)]
power <- subset(power, power != '' | power != NA)

power$Global_active_power <- as.numeric(power$Global_active_power)
hist(power$Global_active_power, col = "red", breaks = 15, main = 'Global Active Power',xlab='Global Active Power (killowatts)')


#width of 480 pixels and a height of 480 pixels.
png(filename='~/Plot1.png', width=480, height=480,units="px", pointsize=22, bg="white", type=c("cairo"))
dev.off()
