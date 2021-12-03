library(dplyr)
data<-read.csv("insurance.csv", stringsAsFactors = FALSE)
mean_charges<-mean(data$charges)
std_charges<-sd(data$charges)
upper<-mean_charges+1.5*std_charges
lower<-mean_charges-1.5*std_charges
data %>% filter(charges>=upper | charges<=lower) %>% summarise(sum=sum(charges))
