#While Loop --> Less commonly used
#Because we have lapply etc. 
#while(abc){
#  xyz
#}

# To print something out from within a loop we use print command

while(FALSE){
  print("Hello")
}
  
# To cancel an Infinite loop we need to hit escape on the Console
# Testing it :) 
while(TRUE){
  print("Hello")
}

# Yes. Hitting escape key works!
# Now for some more serious stuff 

counter <-1
while (counter<12){
  print(counter);
  counter= counter+1; # worked just like counter<- counter+1
}

