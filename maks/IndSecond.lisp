;Напишите функцию, которая определяет, является ли число совершенным.
;Число являеться совершенным, если сумма всех его собственных делителей равна самому число: 6 = 1 + 2 + 3

(defun perfect (x)
    (if (eq x (sumdiv x (round x 2))) t nil)
)

(defun sumdiv (x i)
    (cond
        ((<= i 1) 1)
        (t (if (eq (mod x i) 0) (+ i (sumdiv x (- i 1))) (sumdiv x ( - i 1))))
    )
)

(print (perfect 6))
(print (perfect 9))
