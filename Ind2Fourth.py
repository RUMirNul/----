#С помощью замыкания напишите генератор чисел Фибоначчи.
#func = genFib(); func(); func(); func(); Ответ: 1 1 2

def genFib():
    prev = 0
    now = 1
    def inner():
        nonlocal prev
        nonlocal now
        temp = now
        now = prev + now
        prev = temp
        
        return prev
    return inner

func = genFib()

print(func())
print(func())
print(func())
print(func())
print(func())
print(func())
print(func())
print(func())
print(func())