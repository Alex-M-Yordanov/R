# Направена е извадка от 200 болта, произведени от машина А и 200 болта,
# произведени от машина В. Дефектни се оказали 8 болта произведени от първата машина
# и 15 болта произведени от втората. Може ли да се твърди, че двете машини се различават
# по отношение на вероятността да произведат дефектен болт?

n<-200
x1<-8
x2<-15

#h0:p1=p2
#h1:p1!=p2

phat<-(x1+x2)/(n+n)
obs<-(x1/n -x2/n)/(sqrt(phat*(1-phat)*(1/n+1/n)))
obs
pval<- 2*(1-pnorm(abs(obs)))
pval

#pval = 0.1327 > 0.05 => h0

