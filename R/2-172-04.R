train<-airquality[c(1:nrow(airquality*0.9)),]
mean_train<-mean(train$Ozone, na.rm = TRUE)
before<-median(train$Ozone, na.rm = TRUE)
before
train$Ozone[is.na(train$Ozone)]<-mean_train
after<-median(train$Ozone, na.rm = TRUE)
result<-abs(before-after)
print(result)
