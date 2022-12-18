;Напишите функцию, которая удаляет из списка все вхождения заданного элемента.
;Пример: (remel '(6 1 2 7 1 5 9) 1). Ответ: (6 2 7 5 9)

(defun remel (l x)
    (cond
        ((endp (cdr l)) (cons (car l) nil))
        (t (if (eq (car l) x) (remel (cdr l) x) (cons (car l) (remel (cdr l) x))))

    )
)

(print (remel '(6 1 2 7 1 5 9) 1))

