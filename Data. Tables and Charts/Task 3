# Генерирайте променливи v1, ..., v5 като използвате следния код:
# v1 <- rep(4, 30)
# v2 <- rep(c(3.5,4.5), 15)
# v3 <- rep(c(3,5), 15)
# v4 <- rep(c(2:6), 6)
# v5 <- rep(c(2,6), 15)
# Представете графично всяка от променливите; намерете медианата, средната стойност
# и стандартното отклонение.

v1 <- rep(4, 30)
v2 <- rep(c(3.5,4.5), 15)
v3 <- rep(c(3,5), 15)
v4 <- rep(c(2:6), 6)
v5 <- rep(c(2,6), 15)

my.summary <- function(x) {
  res <- c( median(x, na.rm=T), mean(x, na.rm=T), sd(x, na.rm=T) )
  names(res) <- c("Median", "Mean", "StDev")
  res
}

my.summary(v1)
my.summary(v2)
my.summary(v3)
my.summary(v4)
my.summary(v5)

stripchart(v1,method="stack")
stripchart(v2,method="stack")
stripchart(v3, method="stack")
