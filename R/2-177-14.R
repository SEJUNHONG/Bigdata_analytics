library(dplyr)

data<-mtcars %>% filter(gear==4 & am==1)
mpg_mean<-mean(data$mpg)
mpg_mean
hp_std<-sd(data$hp)
hp_std
print(mpg_mean+hp_std)
