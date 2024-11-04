# Генерирайте данни (xi,yi),i = 1...50, където:
# xi са случайни числа от равномерно разпределение в интервала (1,7);
# i са случайни числа от нормално разпределение с параметри mu = 0 и sigma=2.5;
# yi = beta0+ beta1xi^2+ Epsi.
# beta0 =2, beta1=1.1.

# Постройте линеен модел по данните (xi, yi), i = 1...50. Представете графично данните и
# построения линеен модел. Намерете R^2.


n<-50
x<-runif(n,1,7)
eps<-rnorm(n,0,2.5)
beta0<-2
beta1<-1.1
y<-beta0+beta1*x^2+eps

model<-lm(y~x)

plot(x,y)
abline( coef(model), lwd=2 )
summary(model)
summary(model)$r.squared
confint(model)

plot(fitted(model),resid(model))
