# При проучване направено през 2007 година от 500 анкетирани 26 били вегетарианци.
# През 2019 година е направено ново проучване, според което 43 от 540 анкетирани
# отговорили, че са вегетарианци. Дават ли ни тези данни основание да твърдим, че процентът 
# на вегетарианците през 2019 година се е увеличил спрямо 2007 година?


n1<-500
x1<-26

n2<-540
x2<-43

#h0:p1=p2
#h1:p1<p2

phat<-(x1+x2)/(n1+n2)
obs<-(x1/n1-x2/n2)/(sqrt(phat*(1-phat)*(1/n1+1/n2)))
pval<-pnorm(obs)
pval
#prop.test(c(x1,x2), c(n1,n2), alternative="less", correct=F)

#pval = 0.368 > 0.05 => h0
