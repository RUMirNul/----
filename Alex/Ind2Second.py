#Использование с функцией высшего порядка
import math

def compose(f, g):
    return lambda x: g(f(x))

func = compose(abs, math.tan)
print(func(-1))