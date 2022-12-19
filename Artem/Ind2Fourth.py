#С помощью замыкания напишите генератор элементов геометрической прогрессии с заданными b1 и q.
#b1 = 2; q = 3; func = genGeoProg(b1,q); func(); func(); func(); Ответ: 2 6 18

def genGeoProg(bs, q):
    prev = 0
    now = bs
    def inner():
        nonlocal prev
        nonlocal now
        temp = now
        now = temp * q 
        prev = temp
        
        return prev
    return inner

b1 = 2
q = 3
func = genGeoProg(b1, q)

print(func())
print(func())
print(func())
print(func())
print(func())
print(func())
print(func())
print(func())
print(func())