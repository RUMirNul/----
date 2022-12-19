#Дан список целых чисел. С помощью map отобразите его в список, в котором все числа, кратные некоторому заданому N, поделены на N.
#[2 9 -4 6 -2], N=3 => [2 3 -4 2 -2]

def division_of_multiples(numbers, multiple):
    return list(map(lambda x: (int(x / multiple)) if (x % multiple == 0) else x, numbers))

l1 = [2, 9, -4, 6, -2]
N = 3
print(division_of_multiples(l1, N))