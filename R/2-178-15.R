library(dplyr)
library(MASS)
data("Boston")
a<-Boston %>% filter(crim<=1) %>% summarize(medv_mean=mean(medv),)
print(a)
