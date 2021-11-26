library(dplyr)
airquality[is.na(airquality$Ozone), "Ozone"] <-mean(airquality$Ozone, na.rm=TRUE)
min_ozone<-median(airquality$Ozone)-2*IQR(airquality$Ozone)
min_ozone
max_ozone<-median(airquality$Ozone)+2*IQR(airquality$Ozone)
max_ozone
a<-airquality %>% filter(Ozone>=min_ozone & Ozone<=max_ozone) %>% summarise(sum_ozone=sum(Ozone))
print(a)
