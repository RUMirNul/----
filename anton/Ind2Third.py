#Дан список целых чисел. С помощью map отобразите его в список с остатками от деления соответствующих чисел на некоторое заданное N.
#[2 9 4 6 2], N=3 => [2 0 1 0 2]

def remainders_of_division(numbers, n):
    return list(map(lambda x: x % n, numbers))

l1 = [2, 9, 4, 6, 2]
N = 3
print(remainders_of_division(l1, N))