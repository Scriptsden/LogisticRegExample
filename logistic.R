
# Required pakages
library(aod)
library(ggplot2)
library(Rcpp)

# Loading Data.
mydata <- read.csv("http://www.ats.ucla.edu/stat/data/binary.csv")

head(mydata)

summary(mydata)
sapply(mydata, sd)

xtabs(~admit+rank, data= mydata)
mydata$rank <- factor(mydata$rank)
mylogit <- glm(admit ~ gre + gpa + rank, data = mydata, family = "binomial")

summary(mylogit)
