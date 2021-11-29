library(dplyr)
fifa_rank<-read.csv("fifa_ranking.csv", header=T, fileEncoding = "UTF-8-BOM")
fifa_point<-fifa_rank %>% select(total_points) %>% arrange(desc(total_points))
fifa_point[3,]
fifa_rank %>% filter(fifa_point>=1765.05) %>% select(country_abrv)
mean<-fifa_rank %>% filter(country_abrv %in% c('GER', 'ITA', 'SUI')) %>% summarise(mean=mean(total_points, na.rm=TRUE))
print(mean)
