# Във файла satgpa.txt има данни за резултатите на 1000 студенти. 
# Разгледайте следните променливи:
# sat_v резултат на Verbal SAT;
# sat_m резултат на Math SAT;
# sat_sum общ резултат на теста SAT;
# hs_gpa успех от гимназията;
# fy_gpa успех от първата година в колежа.
# а) Постройте модел, който може да се използва за прогнозиране на успеха от първата
# година в колежа в зависимост от успеха от гимназията. Напишете оцененото регресионно
# уравнение. Направете подходяща графика.
# б) Интерпретирайте коефициента пред предиктора. Може ли да се твърди, 
# че има линейна връзка между двете променливи?
# в) Прогнозирайте успеха от първата година в колежа на студент, чиито успех от 
# гимназията е 3.5. Намерете доверителен интервал и интервал за прогноза.
# г) Може ли да се получи по-добър модел, ако се включат и някои от останалите променливи?


data<-read.table("satgpa.txt", header = T)
data

#a)

model<-lm(fy_gpa~hs_gpa,data=data)
model

#estimated regression equation
# y = beta0+beta*x+eps
# y = fy_gpa
# x = hs_gpa
# y.hat  = 0.09132 + 074314*hs_gpa

plot(fy_gpa~hs_gpa,data=data)
abline(coef(model),lwd=2)

# plot of the residuals versus y.hat
plot( fitted(m1), resid(m1) )

#b

# H0: beta1 = 0
# H1: beta1 != 0

summary(model)
p.value <- summary(model)$coefficients[2,4]
p.value < 0.05 
#true => we deny h0 => we can say that there is a linear connection

#c
#confidence interval
predict(model,new=data.frame(hs_gpa=3.5),interval="confidence")

#prediction interval
predict(model,new=data.frame(hs_gpa=3.5),interval="prediction")

#d
model2<-lm(fy_gpa~hs_gpa + sat_sum, data=data)
summary(model2)
plot(fitted(model2),resid(model2))

m3 <- lm( fy_gpa ~ hs_gpa + sat_m, data=data )
summary(m3)
plot( fitted(m3), resid(m3) )

m4 <- lm( fy_gpa ~ hs_gpa + sat_v, data=data)
summary(m4)
plot( fitted(m4), resid(m4) )

summary(model)$adj.r.squared
summary(model2)$adj.r.squared
summary(m3)$adj.r.squared
summary(m4)$adj.r.squared
# The model model2 has the biggest adj.r.squared => it is the best of all 3
