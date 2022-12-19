#Использование с функцией высшего порядка
import math

def compose(f, g):
    return lambda x: f(g(x))

def pow(x):
    return x * x

func = compose(pow, math.cos)
print(func(-1))