#С помощью замыкания напишите генератор простых чисел.
#func = genPrime(); func(); func(); func(); Ответ: 1 3 5

def isprime(x):
    for i in range(2,x):
        if x % i == 0:
            return False
    return True

def genPrime():
    digit = 1
    def inner():
        nonlocal digit
        digit += 1
        while not isprime(digit):
            digit += 1
        return digit
    return inner

func = genPrime()

print(func())
print(func())
print(func())
print(func())
print(func())
print(func())
print(func())
print(func())
print(func())