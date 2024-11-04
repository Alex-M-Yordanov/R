# Измерени са диаметъра (в инчове), височината (във футове) и обема (в
# кубични футове) на 31 черешови дървета. Диаметърът е измерен на височина 54 инча от
# земята. Данните са във файла cherry.txt.
# а) Постройте модел, който може да се използва за прогнозиране на обема според диаметъра 
# на дървото. Напишете оцененото регресионно уравнение. Направете подходяща графика.
# б) Интерпретирайте коефициента пред диаметъра.
# в) Постройте модел, който включва и височината. Интерпретирайте коефициента пред
# височината и коефициента пред диаметъра.
# г) Намерете доверителен интервал за средния обем на дърво с диаметър 14 инча и
# височина 70 фута.
# д) Постройте модел, в който участва диаметърът на квадрат. Намерете доверителен
# интервал за средния обем на дърво с диаметър 14 инча и височина 70 фута и сравнете
# с резултата от г).


cherry<-read.table("cherry.txt",header=T)
cherry

#a
m1<-lm(volume~diam,data=cherry)
m1

#estimated regression equation:
# y = volume
# x = diam
# y =  beta0 + beta1*x +eps
# y.hat = -36.943 + 5.066*diam

plot(volume~diam,data=cherry)
abline(m1,lwd=2)
summary(m1)
plot(fitted(m1),resid(m1))
confint(m1)
summary(m1)$r.squared

#b
# According to the estimated regression equation, if the diameter is bigger by 1 inch, 
# the volume will be bigger on average with 5.066 cubic feet.

#c
m2<-lm(volume~diam +height,data=cherry)
m2

# y = volume
# x1 = diameter (diam)
# x2 = height
# Model:
# y = beta0 + beta1*x1 + beta2*x2 + eps
# estimated regression equation:
# y.hat = -57.9877 + 4.7082*x1 + 0.3393*x2

summary(m2)
plot( fitted(m2), resid(m2) )

# if the diameter is bigger by 1 inch at a fixed heigth, 
# the volume will be bigger on average with 4.7082 cubic feet.
# 
# if the diameter is bigger by 1 inch at a fixed diameter, 
# the volume will be bigger on average with 0.3393 cubic feet.

#d
intg<-predict(m1, new=data.frame(diam = 14, height = 70), interval="confidence")
intg

#e
cherry$diam2<-cherry$diam^2

m3<-lm(volume~diam2+height,data=cherry)
m3

intd<-predict(m3, new=data.frame(diam2 = 14^2, height = 70), interval="confidence")
intd

(intg[3]-intg[2])<(intd[3]-intd[2])

#false => the confidence interval from e) is shorter

summary(m1)$adj.r.squared
summary(m2)$adj.r.squared
summary(m3)$adj.r.squared
# The model m3 has the biggest adj.r.squared
