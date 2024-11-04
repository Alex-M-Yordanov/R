# Преподавател дал два варианта (А и В) задачи на изпит. Резултатите от
# изпита са във файла examAB.txt. Може ли да се твърди, че в средно вариант В е по
# труден от вариант А, т.е. в средно студентите получават по-малко точки ако им се е падне
# вариант В?


exam<-read.table("examAB.txt",header=T)
a<-exam$points[exam$variant=="A"]
b<-exam$points[exam$variant=="B"]

#h0:mua=mub
#h1:mua>mub

#t-test independent samples
t.test(a,b,alternative="greater")
#pval=0.016<0.05 => h1
