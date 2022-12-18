#С помощью замыкания напишите генератор элементов по следующему алгоритму, 
#начинающему с некоторого заданного N: если N четное число, то N = N / 2, иначе N = 3N+1.
#N = 5; func = gen3nplus1(N); func(); func(); func(); Ответ: 5 16 8

def gen3nplus1(n):
    prev = 0
    now = n

    def inner():
        nonlocal prev
        nonlocal now
        prev = now
        if now % 2 == 0:
            now = int(now / 2)
        else:
            now = 3 * now + 1
        return prev
    return inner

N = 5
func = gen3nplus1(N)

print(func())
print(func())
print(func())
print(func())
print(func())
print(func())
print(func())
print(func())
print(func())