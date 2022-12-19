#С помощью замыкания напишите генератор элементов арифметической прогрессии с заданными a1 и d.
#a1 = 1; d = 3; func = genArProg(a1,d); func(); func(); func(); Ответ: 1 4 7

def genArProg(a1, d):
    prev = 0
    now = a1
    def inner():
        nonlocal prev
        nonlocal now
        temp = now
        now = temp + d 
        prev = temp
        
        return prev
    return inner

a1 = 1
d = 3
func = genArProg(a1, d)

print(func())
print(func())
print(func())
print(func())
print(func())
print(func())
print(func())
print(func())
print(func())