#To know what all different constructs of a function is available, we need to 
#just add a ? at the start of the function, go to the end of the line and ht CTRL+ ENTER
#or Execute that line
?rnorm()

#Now if we see the help section of rnorm() we see that it needs at least 3 inputs. 
#yet if we execute 
rnorm(4) # we will get 4 numbers. Why? 
#Because if we do not provide the other valriables, 
#the system will assume that mean = 0 and sd= 1

#if we refer to a function using ? and we do not get an answer 
#means we need to install relevant packages


#First we download a package, then we activate the package

#Download the package
install.packages("ggplot2")

#Activate the package
#After the installation is done, we do the following: 

library(ggplot2)  
?plot()
qplot(data=diamonds, carat,price, colour=clarity, facets=.~clarity)