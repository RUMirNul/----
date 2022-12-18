;Напишите функцию, которая, получив на вход два числа N и M, возвращает список со всеми целыми числами из отрезка [N,M].

(defun range (min max)
    (COND 
        ((EQ min max ) (cons  min nil))
        (t (append (range min (- max 1)) (cons max nil)))
    )
)

(print (range 1 10))
