#Дан список целых чисел. С помощью map отобразите его в список, в котором находятся результаты применения заданной функции f(x).
#[2 9 -4 5 -2], f(x)=2x+1 => [5 19 -7 11 -3]

def my_function(x):
    return 2 * x + 1

def func_for_all(digits):
    return list(map(lambda x: my_function(x), digits))

l1 = [2, 9, -4, 5, -2]
print(func_for_all(l1))