;Напишите функцию, которая выводит список всех простых множителей заданного числа.
;Не корректно

(defun primeList (x)
    (if (eq x 1) '(1) (prime x 2))
)
 
(defun prime (x i)
    (cond 
        ((eq x i) (cons i nil))
        ((eq (mod x i) 0) (cons i (prime x (+ i 1))))
        (t (prime x (+ i 1)))
    )
)

(print (primeList '16))