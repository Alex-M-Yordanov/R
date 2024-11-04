# Използвайте данните survey от пакета MASS и направете двумерна таблица
# на пушенето по пола. Проверете хипотезата за независимост между пушенето и пола.

library(MASS)
attach(survey)
tb<-table(Smoke,Sex)
tb

#h0: smoking and gender are independent
#h1: smoking and gender are not independent

n <- sum(tb)
df <- (nrow(tb)-1)*(ncol(tb)-1)
smk <- apply(tb, 1, sum)
sex <- apply(tb, 2, sum)

expected <- (smk %o% sex)/n
observed <- tb
chi2.obs <- sum( (observed - expected)^2 / expected )
chi2.obs
p.value <- 1-pchisq(chi2.obs, df)
p.value

chisq.test(tb)

# p.value = 0.3139 > 0.05 => h0
