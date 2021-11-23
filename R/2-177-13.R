cnt<-table(mtcars$cyl)
cnt
total<-length(mtcars$cyl)
a<-cnt/total
print(a[1]*100)
