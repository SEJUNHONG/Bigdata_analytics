library(dplyr)
marvel<-read.csv("marvel-wikia-data.csv", header=T, fileEncoding = "UTF-8-BOM")
train<-marvel %>% filter(!is.na(HAIR) & !is.na(EYE)) %>% filter(HAIR=='Brown Hair' & EYE=='Brown Eyes')
sum(!complete.cases(train$APPEARANCES))
o_mean<-mean(train$APPEARANCES, na.rm = TRUE)
o_mean
o_sd<-sd(train$APPEARANCES, na.rm=TRUE)
o_sd
o_upper<-o_mean+1.5*o_sd
o_upper
o_lower<-o_mean-1.5*o_sd
o_lower
v_mean<-train %>% filter(APPEARANCES>=o_lower & APPEARANCES<=o_upper) %>% summarise(mean=mean(APPEARANCES, na.rm=FALSE))
v_mean
