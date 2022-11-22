# Load Library
install.packages("ISLR2")
library(ISLR2)
library(ggplot2)

# Change working directory
setwd("D:\\Course\\PhD\\Statistical Method\\homework\\4\\multiple_regression")

# read csv
data = read.csv('Carseats.csv')
summary(data)