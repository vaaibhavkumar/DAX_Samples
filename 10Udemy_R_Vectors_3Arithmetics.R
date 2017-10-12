#--For Single Line Comments use #*/
#Vectorised Operations
#Vector Arithmetics

V1 <- c(50 ,34,111, 7,24,631,20,4,7,21,32)  # 11 elements
V2 <- c(100,2 , 56,12)                      # 4 elements

#####
#When you revise it on some future date, think what would be the answer to 
V3<-V1+V2
V3  
V4<-V1-V2
V4
V5<-V2*3
V5
V6<-V2/3
V6
V7<-V1*V2
V7
V8<-V1/V2
V8

## Basically what happens is V2 repeats itself till it matches the size of V1 
# This is called Recycling of Vector 

V9<-(V1<V2) 
V9

# We can pass Vectors as an Input in Functions. 
# We can have functions whose outputs are Vectors. 


#####
##What should I add here?###
#Some Comments are added below on how we can Comment and Uncomment code blocks in R Studio
# If we use # 5 or more time in a straight line, the below code can be collapsed and opened using those 5#s
# Just do not write anything on that line 

"For Multiple lines of comments use double quotes :)"
"If we have to add two vectors of float? 
#Individual Indexes have to be added
2+1
Using a double Quotes can be a way to have multiple lines commented
2+2
Next double quotes will end this " 
2+3


#####
# Actually seems like the above statements have been read as string. We can test it below. 
# Let me see if I can pass it in a variable. 
someVariable <-"For Multiple lines of comments use double quotes :)
If we have to add two vectors of float? 
#Individual Indexes have to be added
2+1 .
Using a double Quotes can be a way to have multiple lines commented
2+2 .Next double quotes will end this " 

someVariable

# Yes "" acts as a string and may be in poor coding formats 
# used as a way to store comments. 

# One Blog indicates that we can use the 
# Key Storkes ALT+ C

# Alternatively
# Write multiple lines lines.
# Then select those line and use the Key Stroke of Ctrl+ Shift + C
