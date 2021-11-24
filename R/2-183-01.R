set.seed(2021)
data<-read.csv("WA_Fn-UseC_-Telco-Customer-Churn.csv")
data<-na.omit(data)
library(caret)
idx<-createDataPartition(data$Churn, p=0.8)
X_train<-data[idx$Resample1, ]
y_train<-data[idx$Resample1, ]
X_test<-data[-idx$Resample1, ]
y_test<-data[-idx$Resample1, ]
sum(is.na(X_train))
sum(is.na(X_test))
idx<-createDataPartition(y_train$Churn, p=0.8)
x_t<-X_train[idx$Resample1, ]
y_t<-y_train[idx$Resample1, ]
x_v<-X_train[-idx$Resample1, ]
y_v<-y_train[-idx$Resample1, ]
dim(x_v)
dim(x_t)
y_t$Churn<-as.factor(y_t$Churn)
y_v$Churn<-as.factor(y_v$Churn)
model_prePro<-preProcess(x_t, method=c("range"))
scaled_X_t<-predict(model_prePro, x_t)
scaled_X_v<-predict(model_prePro, x_v)
scaled_X_test<-predict(model_prePro, X_test)
library(randomForest)
model_rf<-randomForest(y_t$Churn~.-customerID, scaled_X_t, ntree=300, do.trace=TRUE)
predict_rf<-predict(model_rf, newdata = scaled_X_v, type = "response")
confusionMatrix(y_v$Churn, predict_rf)
library(e1071)
model_svm<-svm(y_t$Churn~.-customerID, scaled_X_t)
predict_svm<-predict(model_svm, newdata = scaled_X_v, type="response")
confusionMatrix(y_v$Churn, predict_svm)
y_train$Churn<-as.factor(y_train$Churn)
model_rf<-randomForest(y_train$Churn~ . -customerID, X_train, ntree=300)
predict_rf<-predict(model_rf, newdata = X_test, type='response')
write.csv(predict_rf, "2-183-01.csv", row.names=FALSE)
