#If
#Else
#If Else 

#--- -2 -- -1 -- 0 -- 1 -- 2---

# to generate some random number
rnorm(1)

#save the random numbers in a variable. So 
x<-rnorm(1)
if(x>1)
{print (paste("X is greater than 1. It was", x));
  answer<-"Greater than 1";
}

# Thing is even if x>1 in 1 run but is lesser than 1 in next run,
# we will still see the variable "answer" in the Global Environment
# So what should we do, if we want to remove the variable from the Environment?

# use rm(<<name of the variable>>)
# so we will add this line at the start of the code making it.

rm(answer)
#save the random numbers in a variable. So 
x<-rnorm(1)
if(x>1)
{
  print (paste("X is greater than 1. It was", x));
  answer<-"Greater than 1";
} else{
  answer<-"Less than 1";
}

# Else If is for chaining of statements
# Can be used to avoid Nesting of If statements