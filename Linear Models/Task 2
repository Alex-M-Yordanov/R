# Във файла bac.txt има данни за съдържанието на алкохол в кръвта (грамове алкохол на 100 мл кръв)
# в зависимост от броя на изпитите бутилки бира.
# а) Постройте линеен модел. Напишете оцененото регресионно уравнение. Представете
# графично данните и построения линеен модел.
# б) Интерпретирайте оценените коефициенти.
# в) Имаме ли основание да твърдим, че има линейна връзка между броя на изпитите
# бутилки бира и съдържанието на алкохол в кръвта?
# г) Може ли да се твърди, че при изпиването на още една бира съдържанието на алкохол
# в кръвта се увеличава средно с 0.02?
# д) Намерете доверителен интервал за средното съдържание на алкохол в кръвта при 5
# изпити бутилки бира.
# е) За стойности на предиктора между 1 и 9, намерете доверителен интервал за средното
# съдържание на алкохол в кръвта и интервал за прогноза и ги илюстрирайте на
# графиката от а)


data<-read.table("bac.txt",header=T)
data

#a) linear model (bac-beers)
m1 <- lm( bac ~ beers, data=data )
m1
#m1 =  -0.01270  0.01796
# y = blood alchohol content (bac)
# x = number of drunk bottles of beer (beers)
# Model: y = beta0 + beta1*x + eps
# y.hat = -0.01270 + 0.01796*beers

#b)
# According to the estimated regression equation:
# 
# With the consumption of one more beer, the blood alcohol content 
# increases on average by 0.01796.
# 
# With zero beers consumed, the average blood alcohol content is -0.01270.

#c)
# H0: beta1 = 0
# H1: beta1 != 0

pval<-summary(m1)$coefficients[2,4]
pval < 0.05
#true => H1

#d)
# H0: beta1 = 0.02
# H1: beta1 != 0.02

# Confidence intervals (CI) for beta0 и beta1
confint(m1)

# 0.02 is in CI [0.0128, 0.0231] for beta1 => H0.

#d)
predict( m1, data.frame( beers=5 ), interval="confidence" )
# The confidence interval is [0.066, 0.088]

#e) the predicator is between 1 and 9
xx <- data.frame( beers=seq(1, 9, 0.5) )

#confidence interval
cint <- predict( m1, xx, interval="confidence" )

#prediction interval
pint <- predict( m1, xx, interval="prediction" )
