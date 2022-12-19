;Напишите функцию, которая определяет, является ли число простым.

(defun isprime (x &optional (i 2))
    (cond
        ((eq i x) t)
        (t (if (eq (mod x i) 0) nil (isprime x (+ i 1))))
    )
)

(print (isprime 7))
(print (isprime 10))