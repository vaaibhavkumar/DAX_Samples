#8Udemy_Vector
#Vector = Row of elements of same data type
#Vector = Same thing as array

#R is a statistical language 
#here the index starts with 1 instead of starting with 0

#Lets say we want a character vector of length n
#we can have in it : Integers, Logical (changed to Character)

#when we save a single number, 
#internally R is  saving a Vector of length 1

#How do we create a vector? We use the function C. 
#so to create an int vector, we will first put the number 
intVector <-c(3L,45L,45L,67L,78L)
intVector

#tovalidate what is the data type of the intVector
is.numeric(intVector)
is.integer(intVector)
typeof(intVector)

#If we remove the L then this wont be an int Vector
SecondVector <-c(3,45,45,67,78)

#tovalidate what is the data type of the intVector
is.numeric(SecondVector)
is.integer(SecondVector)
typeof(SecondVector)
is.double(SecondVector) 

v3<-c("a","B32", "Hola!")
is.numeric(v3)
is.integer(v3)
typeof(v3)
is.double(v3)
is.character(v3)

