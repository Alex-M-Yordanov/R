# Генерирайте данни x1,x2,...,xn от 𝒩( mu=5, sigma^2=1) и данни y1,y2,...,yn от
# 𝒩( mu=5.2, sigma^2=1). Проверете хипотезата за равенство на средните. Повторете 10000 пъти
# за n =20,50,100,500. В каква част от случаите нулевата хипотеза се отхвърля?

sim<-function(n,mu1,mu2,sigma1,sigma2)
{
  x<-rnorm(n,mu1,sigma1)
  y<-rnorm(n,mu2,sigma2)
  t.test(x,y)$p.value
}

rs <- replicate( 10000, sim(n=1000, mu1=5, mu2=5.2, sigma1=1, sigma2=1) )
sum(rs<=0.05)/length(rs)