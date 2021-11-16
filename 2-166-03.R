data<-read.csv("insurance.csv", stringsAsFactors = FALSE)
data
mean_data<-mean(data$charges)
mean_data
sd_ds<-sd(data$charges)
sd_ds
outlier_upper<-mean_data+sd_ds*1.5
outlier_upper
outlier_lower<-mean_data-sd_ds*1.5
outlier_lower
data %>% filter(charges>=outlier_upper | charges<=outlier_lower) %>% summarise(sum=sum(charges))
