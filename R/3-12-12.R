data<-read.csv("housing.csv")
nrow_end<-nrow(data)*0.8
train<-data[c(1:nrow_end), ]
med<-median(train$total_bedrooms, na.rm = TRUE)
before<-sd(train$total_bedrooms, na.rm = TRUE)
train$total_bedrooms[is.na(train$total_bedrooms)]<-med
after<-sd(train$total_bedrooms)
print(abs(before-after))
