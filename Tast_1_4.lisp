;Написать функцию gcd, возвращающую НОД двух чисел. 
;Примеры запуска программы:
;(gcd 5 10). Ответ: 5
;(gcd 7 19). Ответ: 1

(defun nod(x y)
    (COND 
        ((EQ x y) x)
        (t (nod (- (max x y) (min x y)) (min x y)))
    )
)

(print (nod 5 10))
(print (nod 7 19))