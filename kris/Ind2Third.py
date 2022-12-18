#Дан список слов. С помощью reduce подсчитайте количество гласных во всех словах (алфавит - латиница).
#["Hello" "World"] => 3
from functools import reduce

def word_vowels_count(word):
    word = word.lower()
    vowels = ['a', 'e', 'i', 'o', 'u', 'y']
    count = 0
    for c in word:
        if c in vowels:
            count += 1
    return count

def list_word_vowel_count(word_list):
    return reduce(lambda a, w: a + word_vowels_count(w), word_list, 0)

l1 = ["Hello","World"]
print(list_word_vowel_count(l1))