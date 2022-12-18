;Напишите функцию, которая выводит список всех простых множителей заданного числа.

(defun primeList (x)
    (if (eq (abs x) 1) '(1) (prime (abs x)))
)

;Проверка, что число простое
(defun isprime (x &optional (i 2))
    (cond
        ((eq i x) t)
        (t (if (eq (mod x i) 0) nil (isprime x (+ i 1))))
    )
)

;Список всех простых делителей
(defun prime (x &optional (i 2))
    (cond 
        ((eq x i) (if (isprime i) (cons i nil) '()))
        ((eq (mod x i) 0) (if (isprime i) (cons i (prime x (+ i 1))) (prime x (+ i 1))))
        (t (prime x (+ i 1)))
    )
)

(print (primeList '123456789))
(print (primeList '10))