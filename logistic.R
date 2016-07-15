#Tests
# Required pakages
library(aod)
library(ggplot2)
library(Rcpp)
 x <- c(1,2,3)
 y <- c(4,65)
# Loading Data.
mydata <- read.csv("http://www.ats.ucla.edu/stat/data/binary.csv")

head(mydata)

summary(mydata)
sapply(mydata, sd)

xtabs(~admit+rank, data= mydata)
mydata$rank <- factor(mydata$rank)
mylogit <- glm(admit ~ gre + gpa + rank, data = mydata, family = "binomial")

summary(mylogit)
