# Разгледайте данните survey от пакета MASS. Представете таблично и гра
# фично данните за физическите упражнения (Exer).

library(MASS)
data(survey)
?survey
attach(survey)

pie(table(Exer))
