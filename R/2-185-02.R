library(caret)
set.seed(42)
trainIndex<-createDataPartition(mtcars$mpg, p=.7, list=FALSE, times=1)
train<-mtcars[trainIndex, ]
test<-mtcars[-trainIndex, ]
model_train<-lm(mpg~., train)
step(model_train, direction = "backward")
summary(lm(mpg~drat+wt+gear+carb, train))
md_step<-lm(mpg~drat+gear+carb, train)
pred<-predict(md_step, newdata = test, type="response")
rmse<-sqrt(mean(train$mpg-pred)^2)
print(rmse)
