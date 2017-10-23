# To create a function you type function, then type round bracket and then the curly bracket 
# For example Name_of_Function <- function()
# { 
#   this is where the code resides
# }  
# For example to do the plotting, we copy paste the code 2-3 time Matplot example. 
# so we can create a function for that 

fnMinutesPlot <- function(row_num)
{
  data <- MinutesPlayed[row_num,,drop= FALSE]
  matplot(t(data),type = "b", pch = 15:18,col = c(1:4,6))
  legend("bottomleft",inset = 0.01,legend = MinutesPlayed[1,,drop = FALSE],pch=15:18,col = c(1:4,6))
}

#t(data) abive transposes the data

# Just like other languages, in R also we can have parameters
# in above example row_num is a variable
# note however that the declaration is bit different. Name of the function is on LHS 
# and name of the paranters that get passed to it are on the RHS
