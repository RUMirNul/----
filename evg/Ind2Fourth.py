#С помощью замыкания напишите генератор разрядов заданного числа N от младших к старшим.
#N = 142; func = genDev(N); func(); func(); func(); func(); Ответ: 2 4 1 0

def genDev(number):
    digits = list(str(number))
    digits.reverse()
    def inner():
        nonlocal digits
        if not digits:
            return 0
        temp = digits[0]
        digits = digits[1:len(digits)]
        
        return temp
    return inner

N = 142
func = genDev(N)

print(func())
print(func())
print(func())
print(func())
