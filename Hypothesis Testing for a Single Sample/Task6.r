# Според проучване от 2009 година, около 7.5% от стоките в даден хипермаркет
# имат грешна цена на етикета. През 2010 е направено ново проучване и от 200 случайно
# избрани стоки, 14 били с грешна цена.

n<-200
x<-14
mu=0.075

# а) Имаме ли основание да твърдим, че през 2010 вероятността стока да е с грешна цена
# е различна от 7.5%?

#h0: mu=0.075
#h1: mu!=0.075

#z-test for proportion

obs<-(x/n-mu)/(sqrt(mu*(1-mu)/n))
obs
pval<- 2*(1-pnorm(abs(obs)))
pval
#pval=0.7883 > 0.05 => h0


# б) Имаме ли основание да твърдим, че през 2010 вероятността стока да е с грешна цена
# е по-малка от 7.5%?

#h0: mu=0.075
#h1: mu<0.075

#z-test for proportion

pval<-pnorm(obs)
pval
#pval = 0.39 > 0.05 => h0

