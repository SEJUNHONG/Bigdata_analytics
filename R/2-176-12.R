library(dplyr)
data<-iris
mean_l<-mean(data$Sepal.Length)
mean_w<-mean(data$Sepal.Width)
print(mean_l+mean_w)
