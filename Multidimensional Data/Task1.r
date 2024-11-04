# За n = 3,7,10,30,90,200 генерирайте данни x1,x2,...,xn от експоненциално
# разпределение с параметър lambda = 1/5 и пресметнете Sum = x1+...+xn.Повторете 10000 пъти.
# x(1)   x(2) ... x(10000)
# 1       1         1
# x(1)  x(2)  ... x(10000)
# 2      2          2
# .      .          .
# .      .          .
# x(1)  x(2)  ... x(10000)
# n      n          n
# Sum(1) Sum(2) ... Sum(10000)

# За всяко n начертайте хистограма на Sum(1),Sum(2),...,Sum(10000)

gen<-function(n)
{
  exp<-rexp(n,1/5)
  sum(exp)
}

reps<-1000
e3<-replicate(reps,gen(3))
e7<-replicate(reps,gen(7))
e10<-replicate(reps,gen(10))
e30<-replicate(reps,gen(30))
e90<-replicate(reps,gen(90))
e200<-replicate(reps,gen(200))

hist(e3)
hist(e7)
hist(e10)
hist(e30)
hist(e90)
hist(e200)
