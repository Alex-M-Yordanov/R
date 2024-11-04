# В кутия има 6 сурови и 2 сварени яйца. Двама играчи, редувайки се, избират
# яйце докато извадят всички яйца. Намерете вероятностите на следните събития:

#  A={на един играч се падат двете сварени яйца};

eggs<-c(rep(0,6),rep(1,2))

f8a<-function()
{
  draws<-sample(eggs,8,replace=F)
  p1<-c(draws[1],draws[3],draws[5],draws[7])
  p2<-c(draws[2],draws[4],draws[6],draws[8])
  sum(p1)==2 | sum(p2)==2
}


res <- replicate(10000,f8a() )
sum(res)/length(res)

# B ={пада се по едно сварено яйце на всеки играч};

f8b<-function()
{
  draws<-sample(eggs,8,replace=F)
  p1<-c(draws[1],draws[3],draws[5],draws[7])
  p2<-c(draws[2],draws[4],draws[6],draws[8])
  sum(p1)==1 & sum(p2)==1
}

res <- replicate(10000,f8b() )
sum(res)/length(res)

#  C ={падат се двете сварени яйца на този, който тегли първи};

f8c<-function()
{
  draws<-sample(eggs,8,replace=F)
  p1<-c(draws[1],draws[3],draws[5],draws[7])
  p2<-c(draws[2],draws[4],draws[6],draws[8])
  sum(p1)==2 
}

res <- replicate(10000,f8c() )
sum(res)/length(res)

# D={падат се двете сварени яйца на този, който тегли втори}.

f8d<-function()
{
  draws<-sample(eggs,8,replace=F)
  p1<-c(draws[1],draws[3],draws[5],draws[7])
  p2<-c(draws[2],draws[4],draws[6],draws[8])
  sum(p2)==2
}

res <- replicate(10000,f8d() )
sum(res)/length(res)

