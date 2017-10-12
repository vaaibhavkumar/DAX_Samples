# Test the law of Large Number 
count1SD<- 0L #= 34.1*2
count2SD<- 0L #=
count3SD<- 0L
for (i in 1:100000)
{
  rm(sample_number);
  sample_number = rnorm(1,0,1);

  #Density, distribution function, quantile function and random generation for the normal distribution with mean equal to mean and standard deviation equal to sd.
  #dnorm(x, mean = 0, sd = 1, log = FALSE)
  #pnorm(q, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
  #qnorm(p, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
  #rnorm(n, mean = 0, sd = 1)
  if(sample_number>-1  & sample_number<=1)
  {
    count1SD<-count1SD+1;
    print(paste("Number is",sample_number,";count1SD is ",count1SD))
    }
  else if ((sample_number>1  & sample_number<=2) | (sample_number<-1  & sample_number>=-2))
  {
    count2SD<-count2SD+1;
    print(paste("Number is",sample_number,";count2SD is ",count2SD))
  }
  else
  {
    count3SD<-count3SD+1;
    print(paste("Number is",sample_number,";count3SD is ",count3SD))
  }
}
count1SD;
count2SD;
count3SD;