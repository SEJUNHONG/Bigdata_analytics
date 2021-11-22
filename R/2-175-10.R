library(ggplot2)
data<-diamonds
str(data)
nrow<-dim(data)[1]*0.8
data2<-data[-c(1:nrow), ]
dim(data2)
library(dplyr)
data2_filter<-data2 %>% filter(cut=='Fair' & carat>=1)
result<-max(data2_filter$price)
print(result)