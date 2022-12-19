def quadraticEquation (a, b, c):
    return lambda x: a * x * x + b * x + c

equation = quadraticEquation(3, 2, 1)
print(equation(2))