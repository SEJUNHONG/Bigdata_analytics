data<-read.csv("TimeAge.csv")
summary(data)
colSums(is.na(data))
library(dplyr)
covid19<-data %>% mutate(data=factor(date), age=factor(age))
summary(covid19)
age20<-covid19 %>% filter(age=='20s') %>% summarise(mean=mean(confirmed))
age20
age50<-covid19 %>% filter(age=='50s') %>% summarise(mean=mean(confirmed))
age50
print(abs(age20-age50))
