library(dplyr)
a<-airquality[airquality$Month==8 & airquality$Day==21, ] %>% select(Ozone)
print(a)
