min_max_scale<-function(x){
  return((x-min(x))/(max(x)-min(x)))
}
wt_scale<-min_max_scale(mtcars$wt)
print(sum(wt_scale>0.5))
