# Генерирайте данни x1,x2,...,xn от равномерно разпределение в интервала
#(5 9). Намерете 95-процентен доверителен интервал за средното . Проверете хипотезата
# mu = 7 срещу mu != 7. Повторете 10000 пъти за n = 20,50,100,500. В каква част от случаите
# доверителният интервал съдържа 7 и едновременно с това нулевата хипотеза не се отхвърля?

gen3<-function(n,alpha)
{
  x<-runif(n,5,9)
  t.res<- t.test(x,mu=7, conf.level=1-alpha)
  ci<-t.res$conf.int[1:2]
  p.val<-t.res$p.value
  cnd1 <- ( ci[1] <= 7 & ci[2] >= 7 )
  cnd2 <- (p.val>alpha)
  c(cnd1,cnd2)
}
res3 <- replicate( 10000, gen3(n=500, alpha=0.05) )
res
cnd1r <- res3[1, ]
cnd2r <- res3[2, ]
table(cnd1r, cnd2r)
