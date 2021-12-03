library(mlbench)
data(BostonHousing)
data<-BostonHousing
top10<-head(sort(data$crim, decreasing = TRUE), 10)
tenth<-top10[10]
data$crim<-ifelse(data$crim>=tenth, tenth, data$crim)
library(dplyr)
over80<-data %>% filter(age>=80)
summary(over80$crim)
result<-mean(over80$crim)
print(result)
