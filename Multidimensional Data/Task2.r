# За n=3,7,10,30,90,200 генерирайте данни x1,x2,...,xn от експоненциално
# разпределение с параметър lambda =1/5 и пресметнете Avg =(x1+...+xn)/n. 
# Повторете 10000 пъти.

# x(1)   x(2) ... x(10000)
# 1       1         1
# x(1)  x(2)  ... x(10000)
# 2      2          2
# .      .          .
# .      .          .
# x(1)  x(2)  ... x(10000)
# n      n          n
# Avg(1) Avg(2) ... Avg(10000)

# За всяко n начертайте хистограма на Avg(1),Avg(2),...,Avg(10000)

e03mean <- replicate( 10000, mean( rexp(3, 1/5) ) )
e07mean <- replicate( 10000, mean( rexp(7, 1/5) ) )
e10mean <- replicate( 10000, mean( rexp(10, 1/5) ) )
e30mean <- replicate( 10000, mean( rexp(30, 1/5) ) )
e90mean <- replicate( 10000, mean( rexp(90, 1/5) ) )
e200mean <- replicate( 10000, mean( rexp(200, 1/5) ) )

hist(e03mean)
hist(e07mean)
hist(e10mean)
hist(e30mean)
hist(e90mean)
hist(e200mean)
