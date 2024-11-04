# (Данни survey от пакета MASS.) Чрез подходящи числови характеристики
# и графики покажете как пулсът се различава в зависимост от това дали студентът пише с
# лявата или с дясната ръка (W.Hnd).

boxplot(Pulse~W.Hnd)
boxplot( Pulse[W.Hnd=="Left"], Pulse[W.Hnd=="Right"] )

my.summary( Pulse[W.Hnd=="Left"] )
my.summary( Pulse[W.Hnd=="Right"] )
