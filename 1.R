mcmcplots
#Import required packages
library(R2WinBUGS)
library(mcmcplots)
data(iris)
summary(iris)
#Plot the raw data
plot(iris$Sepal.Length ~ iris$Petal.Length, xlab = "Petal length", ylab="Sepal length")
sepal <- iris$Sepal.Length
petal <- iris$Petal.Length
sepal <- as.numeric(scale(iris$Sepal.Length))
lm1 <- lm(sepal ~ petal)
summary(lm1)
