# Измерена е дължината на дясното ухо на 66 случайно избрани жени на възраст 
# между 18 и 30 години. Резултатите показват средна дължина 61.9 мм и стандартно
# отклонение 4 мм. Нека предположим, че популационната дисперсия е известна и sigma^2 = (4.1)^2.


zi<-function(x,sigma,n,alpha)
{
  b1<-x-qnorm(1-alpha/2)*(sigma/sqrt(n))
  b2<-x+qnorm(1-alpha/2)*(sigma/sqrt(n))
  c(b1,b2)
}
# а) Намерете 95-процентен доверителен интервал за средната дължина на дясното ухо
# на жените на възраст между 18 и 30 години.

zi(x=61.9,sigma=4.1,n=66,alpha=0.05)

# б) Ако са направени измервания на 88 жени и са получени същите резултати за средната
# дължина и стандартното отклонение, намерете 95-процентен доверителен интервал
# за средната дължина на дясното ухо на жените на възраст между 18 и 30 години.

zi(x=61.9,sigma=4.1,n=88,alpha=0.05)
