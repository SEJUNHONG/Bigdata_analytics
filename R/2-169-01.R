data<-airquality
summary(data)
str(data)
library(dplyr)
data1<-data %>% filter(!is.na(Solar.R))
summary(data1)
before_oz<- sd(data1$Ozone, na.rm = TRUE)
before_oz
med_oz<-median(data1$Ozone, na.rm = TRUE)
med_oz
data1$Ozone<-ifelse(is.na(data1$Ozone), med_oz, data1$Ozone)
summary(data1)
after_oz<-sd(data1$Ozone)
after_oz
result<-before_oz-after_oz
result
