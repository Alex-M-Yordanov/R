# Според производител на автомат за безалкохолни напитки, средното коли
# чество, което налива автоматът в една чаша е 170 грама със стандартно отклонение 3.9
# грама. За да се провери това, е измерено количеството течност при 50 наливания. Резултатите
# показват средно 168 грама и същото стандартно отклонение. Може ли да се твърди,
# че в средно автоматът налива по-малко от 170 грама?

x<-168
sigma<-3.9
n<-50
mu<-170

#h0:mu=170
#h1:mu<170

#z-test for average

obs<-(x-mu)/(sigma/sqrt(n))
obs
pval<- pnorm(obs)
pval
#pval=0.0001 < 0.05 => h1
