# Генерирайте данни (xi, yi), i = 1...n, където:
# xi са случайни числа от равномерно разпределение в интервала (1,10);
# yi = beta0+ beta1xi+ Epsi;
# beta0 =2, beta1=5.
# Разгледайте следните случаи за i:
# а) Epsi са случайни числа от нормално разпределение с параметри mu= 0, sigma= 5;
# б) Epsi са случайни числа от експоненциално разпределение с параметър 1/5.
# Постройте линеен модел по данните (xi,yi), i = 1...n. Повторете 10000 пъти за n =30,50,100,500.
# За всеки от случаите и всяко n намерете:
# ∙ средното на ̂︀^beta1 на базата на 10000 повторения;
# ∙ колко често доверителният интервал за beta1 съдържа истинската стойност;
# ∙ средната дължина на доверителния интервал за beta1 на базата на 10000 повторения.


sim_norm<-function(n,mu,sigma)
{
  x<-runif(n,1,10)
  beta0<-2
  beta1<-5
  y<-beta0+beta1*x+rnorm(n,mu,sigma)
  m1<-lm(y~x)
  c( coef(m1)["x"], confint(m1, "x"), use.names=F )
}

sim_exp<-function(n,lambda)
{
  x<-runif(n,1,10)
  beta0<-2
  beta1<-5
  y<-beta0+beta1*x+rexp(n,lambda)
  m2<-lm(y~x)
  c( coef(m2)["x"], confint(m2, "x"), use.names=F )
}

res.a.500 <- replicate( 1000, sim_norm(500,0,5) )
res.b.500 <- replicate( 1000, sim_exp(500,1/5) )

bhatmean<-mean(res.a.500[1,])
bhatmean
ci<-sum(res.a.500[2,]<=res.a.500[3,])/ncol(res.a.500)
ci
meanci<-mean(res.a.500[3,]-res.b.500[2,])
meanci
