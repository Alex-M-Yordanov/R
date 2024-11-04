# Проведен е експеримент, при който 58 домашни гълъба са пуснати на свобода
# от непознато място, което е на разстояние 106 км от дома им. От тях 32 намерили пътя към
# дома си. Преди провеждане на експеримента изследовател твърдял, че домашните гълъби
# намират пътя към дома си с вероятност над 51%. Подкрепят ли данните твърдението на
# изследователя?


n<-58
p<-0.51
x<-32
#h0: p=0.51
#h1: p>0.51

#z-test for proportion

obs<-(x/n-p)/(sqrt(p*(1-p)/n))
obs
pval<-1-pnorm(obs)
pval

#pval=0.2625 >0.05 => h0