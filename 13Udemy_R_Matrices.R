#Matrices --> Very Import 
#Stepping stines to dataframes

#Vectors are 1 dimensions
#Matrices are like Tables and are 2 dimensional
#Since Matrices are 2 dimensional we need to specify the row and column. 

#Indexation --> Matrix(Row, COlumn) to reach a particular cell
#Matrix[R,]--> Full row
#Matrix[,C]--> Full Column

#####
#1 To add a row to a matrix, we use rbind()
#2 To add a column to a Matrix, we use cbind()
#3 Use matrix() function to create a  matrix

##### 
#To remove the variables from the variable tab and memory, 
#we use rm() function

#####
# How to use Matrix function
#First way
?matrix()
##### 
# Some of the data points 
# Description
# matrix creates a matrix from the given set of values.
# as.matrix attempts to turn its argument into a matrix.
# is.matrix tests if its argument is a (strict) matrix.
# Usage
# matrix(data = NA, nrow = 1, ncol = 1, byrow = FALSE, dimnames = NULL)
# To create a matrix, we need data
# To create data we can manually type it or use 1:30 or seq(3,100,3) type of function
# dimnames	
# A dimnames attribute for the matrix: 
# NULL or a list of length 2 giving the row and column names respectively. An empty list is treated as NULL, and a list of length one as row names. The list can be named, and the list names will be used as names for the dimensions.


seq(4,100,4)

# we can put all these numbers in a vector and then put then use the matrix() function
First.Matrix <- matrix(seq(4,100,4),5,5)
First.Matrix

First.MatrixByRowTrue <- matrix(seq(4,100,4),5,5, byrow = TRUE)
First.MatrixByRowTrue

First.MatrixByRowFalse <- matrix(seq(4,100,4),5,5,byrow = FALSE)
First.MatrixByRowFalse

# On comapring the three Matrix, note that by default, byrow is set to False. FALSE
# By the way What does byRow do? 
# By default R inserts the records in the Matrix, along the column and not along the row

##### 
#How do we give name to the rows and Columns of a Matrix? 
#rownames, colname
?rownames()



#####
##### Example of how to use rbind()
Family.Members.G0 <- c("Deo Narayan Lal", "Brij Rani Devi")
Family.Members.G1 <- c("Raman", "Suniti") 
Family.Members.G2 <- c("Vaibhav", "Surbhi")
Family.Members <- rbind(Family.Members.G0 ,Family.Members.G1 ,Family.Members.G2)
Family.Members

#####
#Time to Practice. Guess the output?
Family.Members[1,]
Family.Members[,1]
Family.Members[2,1]
Family.Members[Family.Members.G1,1]
Family.Members["Family.Members.G1",1]

#In this case, we have the Rows getting name since we have used Named Vectors to create the Matrix
#Trying the same thing without the  use of named vectors

Family.Members2 <- rbind(c("Deo Narayan Lal", "Brij Rani Devi"), c("Raman", "Suniti") ,c("Vaibhav", "Surbhi"))
Family.Members2
Family.Members2[,1]

?name()
gender <- c("Male", "Female")

#####
#####Guess the output?
names(gender)
names(Family.Members.G0)
names(Family.Members)

#As of now the names have not been given hence NULL
gender  
gender(1)
gender[1] 
gender[2]
colnames(Family.Members) <- c(gender[1],gender[2])
Family.Members 

rownames(Family.Members) <- c("G0","G1","G2")
Family.Members

# We use the cbind in the similar fashion
v1 <- 1:5
v2 <- -11:-15
rbind.Ex <- cbind(v1,v2)
rbind.Ex

#ofcourse this time since we used named vectors so the columns have a name

rbind.Ex[2,2]
rbind.Ex[2,v2]


#####
#####Guess the output? 
?rep
rep(c("a","b","Alpha"),3)
rep(c("a","b","Alpha"),each = 3)
rep(c("a","b","Alpha"),each = 3)
#How do we get the name of the rows and coumns of a Matrix? 
#Ans rownames(Matrix)

#How do we remove the row and column name of a Matrix? 
#Assign them the value of NULL
rownames(Family.Members)
colnames(Family.Members)
colnames(Family.Members) = NULL
rownames(Family.Members)
colnames(Family.Members)


#####
##### MATRIX OPERATIONS
Games
rownames(Games)
colnames(Games)
FieldGoals

# The assignments work on Matrix are same as Vector. 
# we can add (hence subtract), divide(hence multiply) etc. 
# For example we can get which player made how many goals per match each year 
# we can do FieldGoals / Games
FieldGoals / Games # Bit difficult to read, hence rounding off
round(FieldGoals / Games)

#How many minutes did each player play per game? 
round(MinutesPlayed / Games)

#How many minutes to score 1 goal? 
MinutesPlayed
FieldGoals
round(MinutesPlayed /FieldGoals,1)

#####
##### MATPLOT 
matplot(t(FieldGoals),type ="b",pch=15:18,col = c(1:4,6))
legend("bottomleft",inset = 0.01,legend =Players,pch=15:18,col = c(1:4,6))
## Doesnot appeal much. 
## Do the calculations in R and move the data to PowerBI for visualization :P

#####
#####Subsetting 
#To get the subset of a Big Matrix, specify the matrix ROWS, 
#then tell the columns. Remember to use square brackets 
#e.g
Games
# if I want to get the data of all the alternate years starting 2007 then
Games[,c(seq(3,10,2))]
# if I want to get the data of all the years for 3 players
Games[c("KobeBryant","LeBronJames","DwightHoward"),]

#From a Matri when we try to get 1 dimension result, it would be prudent to specify
#drop = F else what will happen is that subset of a Matrix can be Vector 
#if you are ok with a Vector, no need to state drop = F


#####
#####Visualising Subset
#####Doubt how useful this would be :) since matplot itself was very weird command
#####So the thing that was taught was this: 

matplot(t(FieldGoals),type ="b",pch=15:18,col = c(1:4,6))
legend("bottomleft",inset = 0.01,legend =Players,pch=15:18,col = c(1:4,6))

# changing FIeldGoals to Minutes player
matplot(t(MinutesPlayed),type ="b",pch=15:18,col = c(1:4,6))
legend("bottomleft",inset = 0.01,legend =MinutesPlayed,pch=15:18,col = c(1:4,6))


# Now since we will be subsetting so:
data <- MinutesPlayed[1:3,]
matplot(t(data),type ="b",pch=15:18,col = c(1:4,6))
legend("bottomleft",inset = 0.01,legend =MinutesPlayed[1:3,],pch=15:18,col = c(1:4,6))

#But what will happen if we want to see data of just 1 plaer?
data <- MinutesPlayed[1,]
matplot(t(data),type ="b",pch=15:18,col = c(1:4,6))
legend("bottomleft",inset = 0.01,legend =Players[1:3],pch=15:18,col = c(1:4,6))

#we do not get the desired output. Reason? as was being discussed few moments ago when we
#subset a Matrix and are left with just 1 dimension, R changes that Matrix to a Vector
#a Vector. And since the matplot was looking for a Matrix, hence it failed. 
#
#Now how do we fix this? 
#Simple: USe the same trick, we used in previous section. specify drop = FALSE at the end of subsetting

data <- MinutesPlayed[1,,drop = FALSE]
matplot(t(data),type = "b", pch = 15:18,col = c(1:4,6))
legend("bottomleft",inset = 0.01,legend = Players[1:3], pch = 15:18,col = c(1:4,6))

