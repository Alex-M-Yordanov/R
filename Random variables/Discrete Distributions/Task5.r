# Машинописка прави средно по една грешка на всеки 500 думи. На една
# страница има 300 думи.

# а) Каква е вероятността да направи не повече от 2 грешки на 5 страници?
ppois(2,3*500*1/500)

#  б) Каква е вероятността да направи между 1 и 3 грешки (включително) на 5 страници?
ppois(3,3*500*1/500)-ppois(0,3*500*1/500)
