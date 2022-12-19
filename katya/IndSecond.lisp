;Напишите функцию, которая выводит список всех делителей заданного числа.

(defun divisors (x &optional (i 1))
    (cond 
        ((eq x i) (cons i nil))
        ((eq (mod x i) 0) (cons i (divisors x (+ i 1))))
        (t (divisors x (+ i 1)))
    )
)

(print (divisors '112))