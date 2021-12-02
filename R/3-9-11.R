data<-esoph
summary(data)
head(data)
data$nsums<-data$ncases+data$ncontrols
tail(data)
nsums_tab<-xtabs(nsums~alcgp+tobgp, data=data)
nsums_tab
chi<-chisq.test(nsums_tab)
result<-chi$statistic
print(result)
