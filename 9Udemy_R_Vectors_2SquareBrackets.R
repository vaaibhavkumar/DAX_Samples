#Recap of previous Session sessionInfo
#1 We have fucntion c to COMBINE and create a Vector
#2 We have 2 ways to create SEQUENCE 3:8 and second 
#  we can use the seq (20,50,7 ) start, end, difference
#3 We have the REPLICATE function
# rep("Hoee", 5)

w<- c("a","b","c","d","e")
# Now if we want to get letter B from above Vector W what should we do? 
# Answer is use square brackets
w[2]

#Imp#1: In C and mny other languae the counting 
#will start from 0. In R the counting of the Vector starts with the 
#Index 1

#Imp#2: We can put negative Index also inside the square Brackets
#What that will do is that it will leave those elements out
e.g.
w[-1] # We get all the elements inside the Vector EXCEPT element at Index 1


#And remmber that w[-1] ==>  Another vector of length 4
v2<-w[-3]
v2
w[1:5] #we can put a sequence also inside the []

#We can also put another Vector inside the []
w[2:4] 

#We can also put function inside the []
w[seq(1,5,2)] 

#we can get exactly same answer if we state
w[c(-2,-4)] 

#can we run a sequence of -ve numbers inside the []?
#If yes which of the below ones are correct?
w[-3:-5]
w[-5:-3]

#Ans Both :)

4:1
1:4

#R is  Vectorised form of Language. What we have leant, 
# actually might NOT get used that much in real life

#What will we get when we enter values outside the Vector's range? 
#Like the onses below'
w[1]    #"a"
w[-1]   #"b,"c","d","e"
w[10]   # NA