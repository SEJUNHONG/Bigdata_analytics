install.packages("ISLR")
library(ISLR)
data(Hitters)
data<-Hitters
summary(data$Salary)
min_sal<-median(data$Salary, na.rm = TRUE)-2*IQR(data$Salary, na.rm = TRUE)
max_sal<-median(data$Salary, na.rm = TRUE)+2*IQR(data$Salary, na.rm = TRUE)
data2<-data %>% filter(Salary<min_sal | Salary>max_sal)
result<-sum(data2$Salary)
result
