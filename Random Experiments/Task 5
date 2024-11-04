# Каква е вероятността в група от 25 човека поне двама да имат рожден ден на
# един и същи ден от годината?

f5<-function()
{
  bd<-sample(c(1:365),25,replace=T)
  length(unique(bd))!=length(bd)
  #any(duplicates(bd))
}

res<-replicate(100000,f5())
sum(res)/length(res)
