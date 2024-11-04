# Във файла ManWomanEye.txt има данни за цвета на очите на 204 семейни
# двойки. Има ли връзка между цвета на очите на мъжа и цвета на очите на жената?

col<-read.table("ManWomanEye.txt",header=T)
attach(col)

tb<-table(col$man,col$woman)
tb

# H0: the color of the eyes of a man and of a woman are independent
# H1: there is a correlation between the color of the eyes of a man and of a woman

n <- sum(tb)
df <- (nrow(tb)-1)*(ncol(tb)-1)
males <- apply(tb, 1, sum)
females <- apply(tb, 2, sum)

expected <- (males %o% females)/n
observed <- tb
chi2.obs <- sum( (observed - expected)^2 / expected )
chi2.obs
p.value <- 1-pchisq(chi2.obs, df)
p.value

chisq.test(tb)

# p.value < 0.05 => h1
