#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#You have been supplied with two vectors of data: monthly revenue and monthly
#expenses for the financial year in question. Your task is to calculate the following
#financial metrics:
#- profit for each month
#- profit after tax for each month (the tax rate is 30%)
#- profit margin for each month - equals to profit a after tax divided by revenue
#- good months - where the profit after tax was greater than the mean for the year
#- bad months - where the profit after tax was less than the mean for the year
#- the best month - where the profit after tax was max for the year
#- the worst month - where the profit after tax was min for the year

#All results need to be presented as vectors.
#Results for dollar values need to be calculated with $0.01 precision, but need to be
#presented in Units of $1,000 (i.e. 1k) with no decimal points.
#Results for the profit margin ratio need to be presented in units of % with no
#decimal points.
#Note: You colleague has warned you that it is okay for tax for any given month to be
#negative (in accounting terms, negative tax translates into a deferred tax asset).

#Solution
ProfitPerMonth<-revenue-expenses
#1 profit for each month
ProfitPerMonth

tax<- 30/100
tax

#2 profit after tax for each month
ProfitAfterTax<-(1-tax)*(ProfitPerMonth)
#ProfitAfterTax
floor(ProfitAfterTax/1000)

#3 profit margin for each month
ProfitMargin<- ProfitAfterTax/revenue
ProfitMargin
round(ProfitMargin*100,0)

#4 good months - where the profit after tax was greater than the mean for the year
Months<-1:12
#Months
AverageProfitAfterTax<-sum(ProfitAfterTax) /12
Mean.Profit.After.Tax<-mean(ProfitAfterTax)
Mean.Profit.After.Tax
#AverageProfitAfterTax #1750.681
IsPATMoreThanAverage<-(ProfitAfterTax-AverageProfitAfterTax)>0
Good_Months<-c(Months[IsPATMoreThanAverage])
Good_Months

#5 bad months - where the profit after tax was less than the mean for the year
Is_PAT_Less_Than_Average<-(ProfitAfterTax-AverageProfitAfterTax)<0
Bad_Months<-c(Months[Is_PAT_Less_Than_Average])
Bad_Months

#6 the best month
MaxProfit<-max(ProfitAfterTax)
#MaxProfit
#ProfitAfterTax-MaxProfit>=0
BestMonth<-c(Months[(ProfitAfterTax-MaxProfit>=0)])
BestMonth

Best.Month2 <- ProfitAfterTax == MaxProfit
Best.Month2 <- c(Months[Best.Month2])
Best.Month2
#- the worst month - where the profit after tax was min for the year
MinProfit<-min(ProfitAfterTax)
#MinProfit
#ProfitAfterTax-MinProfit<=0
WorstMonth<-c(Months[(ProfitAfterTax-MinProfit<=0)])
WorstMonth


#7 Matrices
#m<-rbind() -- In next exercises