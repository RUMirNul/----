#С помощью замыкания напишите генератор очередного простого числа из заданного списка.
#lst = [3 9 8 7 2]; func = genPrElem(lst); func(); func(); func(); func(); Ответ: 3 7 0 0 (Тут опечатка тк 2 тоже простое число)

def isprime(x):
    for i in range(2,x):
        if x % i == 0:
            return False
    return True

def prime_list(numbers):
    primes = list()
    for i in numbers:
        if isprime(i):
            primes.append(i)
    return primes


def genPrElem(numbers):
    primes = prime_list(numbers)

    def inner():
        nonlocal primes
        if not primes:
            return 0
        temp = primes[0]
        primes = primes[1:len(primes)]

        return temp
    return inner

l1 = [3, 9, 8, 7, 2]
func = genPrElem(l1)
print(func())
print(func())
print(func())
print(func())