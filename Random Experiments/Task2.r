# В кутия има 3 различни чифта чорапи. Вадим в тъмното 2 чорапа. Каква е
# вероятността извадените два чорапа да са чифт?

box<-c(1,1,2,2,3,3)

f2<-function()
{
  take<-sample(box,2,replace=F)
  return (take[1]==take[2])
}

res<-replicate(10000,f2())
sum(res)/length(res)
