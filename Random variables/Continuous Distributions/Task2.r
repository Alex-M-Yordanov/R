# Генерирайте 500 случайни числа от експоненциално разпределение с параметър lambda = 1/7.
# Начертайте хистограма на генерираните числа и на същата картинка добавете
# графика на плътността f(x). Повторете същото с 5000 случайни числа.

x<-rexp(500,1/7)
hist(x,probability=T)
curve(dexp(x,2,3),from=0,to=max(x),add=T,lwd=2)

