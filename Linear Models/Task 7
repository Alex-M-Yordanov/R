# Въвфайла duke_forest.csv има данни за 98 продадени къщи. Разгледайте следните променливи:
# price цена (в долари);
# bed брой спални;
# bath брой бани;
# area площ (в квадратни футове);
# year_built година на построяване;
# lot площ на дворното място (в акри).
# Постройте модел, който може да се използва за прогнозиране на цената според 
# характеристиките на къщата.


data<-read.csv("duke_forest.csv",header=T)
data


mod<-lm(price~bed+bath+area+year_built+lot,data=data)
mod

#backward elimination
#bed has the biggest p.val => remove

mod2<-lm(price~year_built+bath+area+lot,data=data)
summary(mod2)$coefficients

#year_built has the biggest p.val  => remove

mod3<-lm(price~+bath+area+lot,data=data)
summary(mod3)$coefficients
