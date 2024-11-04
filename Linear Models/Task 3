# Генерирайте данни (xi,yi),i = 1...50, където:
# xi са случайни числа от равномерно разпределение в интервала (1,7);
# i са случайни числа от нормално разпределение с параметри mu = 0 и sigma;
# yi = beta0+ beta1xi+ Epsi.
# Разгледайте следните случаи за beta0, beta1, Eps :
# а) beta0 =2, beta1=1.5, sigma=2.
# б) beta0 =2, beta1=1.5, sigma=1.
# в) beta0 =2, beta1=0.17, sigma=1.
# Постройте линеен модел по данните (xi, yi), i = 1...50. Представете графично данните и
# построения линеен модел. Намерете R^2 и доверителен интервал за beta1.

set.seed(12)

n<-50
x<-runif(n,1,7)

#a)
beta0<-2
beta1<-1.5
sigma<-2
eps<-rnorm(n,0,2)
y<-beta0+beta1*x+eps

model<-lm(y~x)
model
plot(x,y)

summary(model)$r.squared
confint(model)
