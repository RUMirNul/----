#Дан список слов. С помощью map отобразите его в список, в котором все слова переведены в верхний регистр.
#["Hello" "world"] => ["HELLO" "WORLD"]

def to_upper(words):
    return list(map(lambda x: x.upper(), words))

l1 = ["Hellow", "world"]
print(to_upper(l1))
