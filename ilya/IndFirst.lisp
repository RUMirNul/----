;Напишите функцию, которая раскрывает все скобки в списке.
;(slice '(7 8 (1 4 (5)) 1 (2 3))). Ответ: (7 8 1 4 5 1 2 3)

(defun slice (l)
    (cond
        ((endp (cdr l)) (car l))
        ((listp (car l)) (append (slice (car l)) (slice (cdr l))))
        (t (cons (car l) (slice (cdr l))))
    )
)

(print (slice '(7 8 (1 4 (5)) 1 (2 3))))

