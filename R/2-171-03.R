library(ggplot2)
library(dplyr)
data(diamonds)
data<-diamonds
str(data)
nrow<-dim(data)[1]*0.8
nrow
train<-data[c(1:nrow),]
srt<-train %>% arrange(desc(price))
train100<-head(srt, 100)
head(train100)
result<-mean(train100$price)
result
