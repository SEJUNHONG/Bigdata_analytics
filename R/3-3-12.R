iris_sample70<-iris[c(1:nrow(iris)*0.7),]
Sepal.Length_sd<-sd(iris_sample70$Sepal.Length)
print(Sepal.Length_sd)
