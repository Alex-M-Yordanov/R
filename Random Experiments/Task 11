# В една кутия има 2 зелени и 2 червени топки. В друга кутия има 1 зелена и
# 4 червени топки. Хвърляме зар и ако се падне шестица, теглим топка от първата кутия, а
# ако не се падне шестица, теглим топка от втората кутия.


box1<-c('g','g','r','r')
box2<-c('g','r','r','r','r')

dice<-c(1:6)

# а) Каква е вероятността да извадим зелена топка?

f11a<-function()
{
  row<-sample(dice,1)
  
  if(row==6)
  {
    samp<-sample(box1,1)
  }
  else
  {
    samp<-sample(box2,1)
  }
  
  samp=='g'
}


res <- replicate(10000,f11a() )
a<-sum(res)/length(res)
a

#  б) Ако извадената топка е зелена, каква е вероятността да е извадена от втората кутия?

f11b<-function()
{
  row<-sample(dice,1)
  
  if(row==6)
  {
    samp<-sample(box1,1)
  }
  else
  {
    samp<-sample(box2,1)
  }
  
  return(samp=='g' & row!=6)
}


res <- replicate(100000,f11b() )
b<-sum(res)/length(res)
b/a
