library(dplyr)
sales<-read.csv("sales_train_v2.csv", header = T, fileEncoding = "UTF-8-BOM")
cnt<-sales %>% group_by(item_id) %>% summarise(n=n())
arr<-cnt %>% arrange(desc(n))
top3_std<-sales %>% filter(item_id %in% c(arr[1,1], arr[2,1], arr[3,1])) %>% summarise(sd=sd(item_price))
top3_std
total_std<-sales %>% summarise(total_std=sd(item_price))
total_std
print(total_std-top3_std)
