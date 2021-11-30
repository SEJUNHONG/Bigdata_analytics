library(MASS)
library(mlbench)
data(BostonHousing)
Boston<-Boston[order(-Boston$medv), ]
Boston$medv[c(1:50)]<-min(Boston$medv[c(1:50)])
Boston_crim<-Boston[Boston$crim>1,]
result<-mean(Boston_crim$crim)
print(result)
