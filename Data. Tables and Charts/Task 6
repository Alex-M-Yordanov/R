# (Данни survey от пакета MASS.) Намерете медианата, средната стойност и
# стандартното отклонение на:
# а) пулса на студентите;
# б) пулса на жените;
# в) пулса на студентите на възраст не повече от 25 години;
# г) пулса на студентите, правещи физически упражнения често;
# д) пулса на студентите, които са непушачи и правят физически упражнения често.

summ<-function(x)
{
  res<-c(median(x,na.rm=T),mean(x,na.rm=T),sd(x,na.rm=T))
  names(res)<-c("Median","Mean","Standart Diviation")
  res
}

summ(Pulse)
summ(Pulse[Sex=="Female"])
summ(Pulse[Age<=25])
summ(Pulse[Exer=="Freq"])
summ(Pulse[Smoke=="Never" & Exer=="Freq"])
