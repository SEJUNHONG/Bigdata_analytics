library(MASS)
summary(Cars93)
colSums(is.na(Cars93))
median_luggage<-median(Cars93$Luggage.room, na.rm = TRUE)
median_luggage
before<-mean(Cars93$Luggage.room, na.rm=TRUE)
before
Cars93$Luggage.room[is.na(Cars93$Luggage.room)]<-median_luggage
after<-mean(Cars93$Luggage.room, na.rm=TRUE)
after
print(abs(before-after))
