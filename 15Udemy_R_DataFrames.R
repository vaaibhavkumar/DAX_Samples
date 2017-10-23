#####
#Data Frames are like Tables. 
#They can have different data types.

#In Metrices, we need to have same data type

#Data Frames --> Double, logical, Int, Float, character


#####
#Demographic Analysis

# Lets say UN has hired you as a Data Scientist and you are on a project to analyse the World's demogrphic trends. 
# You are required to produce a scatterplot illustrating BirthRate and Internet usage stats by COuntry
# The scatterplot also has to be categorised as per country's Income Groups
#source of data is ...superdatascience.com/rcourse


#####
?read.csv()
?file.choose() #Choose a File Interactively

#Method 1 --> Get a browser screen
dfDemographicData <- read.csv(file.choose()) 
dfDemographicData

#Method 2--> Set a working directory and read the data from that loation
# Working Directory is the defualt folder from where R is going to read and write the data

# How do we find out what is my default wrking directory? 
getwd() #"C:/Users/v-vaikum/Documents"

# What if I want to change the working directory?

setwd("C:\\Users\\v-vaikum\\OneDrive - Microsoft\\TrainingMaterials\\R\\Section 5. Data Frames")
# Rem: How we tye setwd is a function of the OS youa re working on 
# here each back slas has to be replaced by \\

# Q: What to do if it is on some sharepoint location, some shared location ? 
# and if the file is too big for us to download?

getwd()#"C:/Users/v-vaikum/OneDrive - Microsoft/TrainingMaterials/R/Section 5. Data Frames"
read.csv(file = "DemographicData.csv")


#Put all this data in a data frame
rm(dfDemographicData) # remove what was already stored 
dfDemographicData <- read.csv(file = "DemographicData.csv")



#####
#Now that we have read and stored the data 
#now the fun begins 
Row_Count <- nrow(dfDemographicData) # Imported 195 rows
Col_Count <- ncol(dfDemographicData) # Imported 5 Columns

head(dfDemographicData) # Shows the top 6 rows.
#In case we want to see more rows from the top
head(dfDemographicData, 10)

# to see the borrom rows, we use TAIL (A fox has a head and a tail)
tail(dfDemographicData)
tail(dfDemographicData, 10) # just like head here we can also change the number of the records being shown. Default is 6

# str() This function does not mean string. This means structure of data. So let us see what does structure of our data look like. 
str(dfDemographicData)
# we get the name of the 5 columns. 
# we get a quick analysis provided by R. We have 195 factors in first and second row and 4 factors in the 5th row.

# There is one more tricky thing that can come in R interviews
# runif()--> Does not mean run if. It means R UNIF-->Randomly generate Uniformly districuted numbers

# Another function that can give us the summary of the data is 
?summary()
summary(dfDemographicData,9)



#####
#Using the $ sign 
head(dfDemographicData)

# if we want to get the Birth Rate of Angola, what is it that we can do ? 
dfDemographicData[3,3]

# second way is to used the named columns
dfDemographicData[3,"Birth.rate"]

# if we think about the naming convention of dataframes, we will see that the columns have names
# but the rows do not have names. They have numbers, just the way they are in typical tables / excel sheets

# there is one more thing to note. we can use a $ with a dataframe. We state the name of the dataframe, add 
# a $ sign after that and then we add a column name. So what happens is that column gets fully extracted as
# a Vector

dfDemographicData$Country.Name  
# and if we say dfDemographicData$Country.Name[3] --> we will get the thord country in the data frame
dfDemographicData$Country.Name[3]  

#Note that dfDemographicData$Country.Name  is identical to 
dfDemographicData[,"Country.Name"]

#A common use of the $ sign. TO find the levels inside a column.  
levels(dfDemographicData$Birth.rate) # we have not levels here so we get NULL
levels(dfDemographicData$Income.Group) # we have 4 levels here, we got to know about it in outut of str(dfDemographicData)

#The output of levels is a Vector so we can create a R object and assign these values over there as well
levels(dfDemographicData$Income.Group)[3]
levels(dfDemographicData$Income.Group)[seq(1,4,2)]


##### 
# Basic operations on a data frame
#1. Subsetting  
dfDemographicData[1:10,]      # first 10 rows
dfDemographicData[c(1,10),]   # first and 10th row
#One more thing. In a Matrix if we pull only 1 row, Matrix becomes a Vector. 
#In case of a data.frame if we pull a row, it is still a DataFrame. But if we pull just a column, it becomes
#a Vector. See the results of the dfDemographicData[1,] and dfDemographicData[,1]
is.data.frame(dfDemographicData[1,]) # TRUE
is.data.frame(dfDemographicData[,1]) # FALSE

is.data.frame(dfDemographicData[,1,drop = F]) # use our little trick, if want to retain it as a frame

## to add a column
# To see list of columns 
head(dfDemographicData)
dfDemographicData$MyCalc <- dfDemographicData$Birth.rate*dfDemographicData$Internet.users
# the above operation will add a column to the data fram

# now if we will repeat the above step we will get to see the new column 
head(dfDemographicData)

# Test of Knowledge 
# If we want to add another column to the vector and that column has just 4 values, what will happen? 
# Ans: Value of the new column will be getting recycled
 
dfDemographicData$Test.Recycling <- 1:5
head(dfDemographicData) # note that the sixth row is having the value 1, i.e. reycling has happened
head(dfDemographicData, 12)

# Now if we have to delete a column what shall we do ? 

# 1. Set the column name to NULL 
head(dfDemographicData)
dfDemographicData$Test.Recycling <- NULL
head(dfDemographicData)

dfDemographicData$MyCalc <- ""
head(dfDemographicData) # Guess the output

dfDemographicData$MyCalc <- NULL
head(dfDemographicData) # Guess the output


##### 
#### Filtering a data frame

##Filtering is more about rows
##This is supposed to work a lot like excel

# lets say we want to see where the percent of Internet Users is less than 2%
# we create a filter
filter <- dfDemographicData$Internet.users > 2 # now the vector filter has the value true false set in it for proper rows

# pass this vector having TRUE and FALSE to the data frame in [] in the rows side
dfDemographicData[filter,]

# Now if we want to have the countries where the birth rate is more than 40 
dfDemographicData[dfDemographicData$Birth.rate > 40,]


#####
# Introduction to qplot





#####
