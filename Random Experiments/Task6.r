# В отдел на фирма работят 20 човека. За Коледа те решават да си разменят
# подаръци. В кутия слагат 20 листчета, на всяко от които има едно име. Всеки тегли листче
# (без да го връща) и подарява на този, чието име е изтеглил. Каква е вероятността поне
# един да изтегли своето име?

papers<-c(1:20)

f6<-function()
{
  draw<-sample(papers,20,replace=F)
  for(x in 1:length(draw))
  {
    if(x==draw[x])
      return(1)
  }
  return(0)
  
  #d <- x - c(1:k)
  #any(d==0)
  
}

res<-replicate(10000,f6())
sum(res)/length(res)
