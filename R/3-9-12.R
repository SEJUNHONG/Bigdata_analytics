data<-ChickWeight
summary(data)
min_weight<-min(data$weight)
max_weight<-max(data$weight)
data$sc_weight<-scale(data$weight, min_weight, max_weight-min_weight)
summary(data$sc_weight)
library(dplyr)
result<-data %>% filter(sc_weight>=0.5) %>% nrow()
print(result)
