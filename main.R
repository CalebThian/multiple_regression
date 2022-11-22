# Load Library
install.packages("ISLR2")
library(ISLR2)
library(ggplot2)

# Change working directory
setwd("D:\\Course\\PhD\\Statistical Method\\homework\\4\\multiple_regression")

# read csv
data = read.csv('Carseats.csv')
summary(data)

# Fit regression model using Price, Urban, US as predictors
fit.a <- lm(Sales ~ Price+Urban+US, data = data)
summary(fit.a)

# Fit a smaller model using Price and US(significant variables)
fit.b <- lm(Sales ~ Price+US, data = data)
summary(fit.b)

# Fit all predictors
fit.all <- lm(Sales ~ ., data = data)
summary(fit.all)

# Diagnostic of the fitted line
residual <- fit.all$residuals
fitted <- fit.all$fitted.values
par(mfrow = c(1, 3))
plot(fitted, residual, pch = 19)
qqnorm(residual, pch = 19)
plot(residual, pch = 19)


# Fit only with the significance predictors
fit.sig <- lm(Sales ~ CompPrice+Income+Advertising+Price+ShelveLoc, data = data)
summary(fit.sig)

# Diagnostic of the fitted line
residual <- fit.sig$residuals
fitted <- fit.sig$fitted.values
par(mfrow = c(1, 3))
plot(fitted, residual, pch = 19)
qqnorm(residual, pch = 19)
plot(residual, pch = 19)


