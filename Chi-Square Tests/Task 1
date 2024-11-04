# Резултатите от 180 хвърляния на зар са дадени в таблицата:
# 1  2  3  4  5  6
# 28 36 36 30 27 23
# Може ли да се счита, че зарът е балансиран?

dat<-c(28,36,36,30,27,23)
probs<-rep(1/6,6)

n<-sum(dat)
k<-length(probs)

# H0: p_i = 1/6, i=1...6
# H1: p_i != 1/6

obs<-sum((dat-n*probs)^2/(n*probs))
obs
pval<- 1-pchisq(obs, df=k-1)
pval

#chisq.test(dat,p=probs)$p.value

# p.value = 0.4844 > 0.05 => h0
