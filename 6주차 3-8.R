data("mtcars")
library(rgl)
plot3d(mtcars$mpg, mtcars$hp, mtcars$drat)
text3d(mtcars$mpg, mtcars$hp, mtcars$drat, 
       texts=rownames(mtcars), col='red', adj = 1)