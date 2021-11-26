library(dplyr)
data<-iris %>% filter(Species=='virginica') %>% mutate(Len=ifelse(Sepal.Length>6, 1, 0)) %>% select(Len) %>% summarise(len_sum=sum(Len))
print(data)
