dshousing<-read.csv("housing.csv")
dshousing
nrow_end<-nrow(dshousing)*0.8
nrow_end
ds_train<-dshousing[c(1:nrow_end),]
ds_train
median_train<-median(ds_train$total_bedrooms, na.rm=TRUE)
median_train
org_sd<-sd(ds_train$total_bedrooms, na.rm = TRUE)
org_sd
ds_train$total_bedrooms[is.na(ds_train$total_bedrooms)]<-median_train
trans_sd<-sd(ds_train$total_bedrooms)
trans_sd
result<-org_sd-trans_sd
result
