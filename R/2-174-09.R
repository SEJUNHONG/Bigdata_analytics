library(dplyr)
data<-mtcars
data_man_min<-data %>% filter(am==1) %>% arrange(wt) %>% head(10)
data_man_min
mean_man_mpg<-mean(data_man_min$mpg)
data_aut_min<-data %>% filter(am==0) %>% arrange(wt) %>% head(10)
data_aut_min
mean_aut_mpg<-mean(data_aut_min$mpg)
result<-mean_man_mpg-mean_aut_mpg
print(result)
