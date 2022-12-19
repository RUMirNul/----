;Написать функцию len, вычисляющую длину списка. 
;Примеры запуска программы:
;(len '(x y z)). Ответ: 3
;(len ()). Ответ: 0

(defun len (x)
    (cond
        ((null x) 0)
        (t (+ 1 (len (cdr x))))
    )
)

(print (len '(x y z)))
(print (len '()))


