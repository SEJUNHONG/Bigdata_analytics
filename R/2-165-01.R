library(mlbench)
data(BostonHousing)
data<-BostonHousing
head(sort(data$crim, decreasing = TRUE), 10)
top10<-head(sort(data$crim, decreasing = TRUE), 10)
tenth<-top10[10]
data$crim<-ifelse(data$crim>=tenth, tenth, data$crim)
library(dplyr)
data%>%filter(age>=80)
over80<-data%>%filter(age>=80)
summary(over80$age)
mean(over80$crim)
