----------------------------------------------------------------------------------------------
# Title: Basic R Commands Tutorial
# R version: 3.1.2 GUI 1.65 Snow Leopard 
# RStudio 2 version: 0.98.1062
# OS: Mac OS X 10.10.2
# Maintainer: Ara Cho <ac3772@columbia.edu>

# Execute the following commands to learn the basics of R
# In R, the latest commands overwrite previous settings
# Also remeber: R is case-sensitive
----------------------------------------------------------------------------------------------

# To see variables types of graphs e.g. pie charts, histograms, topographic 
demo(graphics)

#For mathematic operations
2+2
2-2
2*2
2/2
2^2
(3-2)*(2^3)
-2 - -2
"+"(2,3)
log(1)
log(100, base=10)
log10(100)
x <- c(2,4,6,8)
mean(x)
sum(x)
length(x)

#To learn more about commands, use "?" 
?log

#Find objects by name or partial name
apropos("log")
#or
help.search("log")
#or
RSiteSearch("loglinear", "functions")

#Creating vectors using following commands
y=c(1,2,3,4)
1:4
4:1
-1:2
seq(1,4)
seq(2, 8, by=.5)
seq(0, 1, length=4)

#Vector arithmetic
c(2,4,6,8)/2
c(1,2,3,4)/c(1,2,3,4)
log(c(0.1,1,10,100), 10)
x <- c(2,4,6,8)
x
x/2

#sqrt refers to squared root
y<- sqrt(x)
y

#rnorm randomly generates normal distribution with mean (=mean) and standard deviation (=sd)
x <-rnorm(100)
x

#summary generates basic statistics such as the minimum or maximum values and quartiles
summary(x)

#You can also create variables ranging from equations, vectors and matrices
Var <- function(x) sum((x - mean(x))^2)/(length(x)-1)
Var(x)

#Reading data into RStudio (.csv format specified)
GSS <- read.csv(file.choose(), header=TRUE)
GSS
summary(GSS)

#Creating a dataframe
gay_acquaintance <- GSS$acqvagay

#Using histogram to examine distribution
hist(gay_acquaintance)

#To load a package use "library()"
library(QMSS)
library(Librarian)

#To load multiple packages with one command use "Librarian()": Remember to uppercase L
my.usual <- c("plyr", "ggplot2", "stargazer")
Librarian(my.usual)





