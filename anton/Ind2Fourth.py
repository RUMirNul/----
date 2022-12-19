#С помощью замыкания напишите генератор разрядов бинарного представления заданного числа N от младших к старшим.
#N = 10; func = genBin(N); func(); func(); func(); func(); Ответ: 0 1 0 1


def genBin(n):
    number = n

    def inner():
        nonlocal number
        temp = number % 2
        number = number // 2

        return temp

    return inner

N = 10
func = genBin(N)

print(func())
print(func())
print(func())
print(func())
print(func())
print(func())