library(MASS)
data<-cats
str(data)
min_hwt<-mean(data$Hwt)-1.5*sd(data$Hwt)
max_hwt<-mean(data$Hwt)+1.5*sd(data$Hwt)
library(dplyr)
data2<-data %>% filter(Hwt<min_hwt | Hwt>max_hwt)
result<-mean(data2$Hwt)
result
