# Проведен е експеримент, при който е измерено времето на реакция при
# 32 доброволци преди ислед изпиване на 50мл водка. Данните са във файла reacttime.txt.
# Може ли въз основа на данните да се заключи, че след употреба на 50 мл водка времето
# на реакция в средно се увеличава?

data<-read.table("reacttime.txt",header=T)
data

before<-data$before
after<-data$after

#h0:mu_before=mu_after
#h1:mu_before<mu_after

# t-test for independent samples
t.test(before,after,alternative="less",paired=T)

# p.value = 0.000000000324 < 0.05 => h1
