;Написать функцию diff, вычисляющую производную полинома. 
;Примеры запуска программы (во всех примерах ниже для краткости пропущен вызов print):
;(diff '(+ x (* 3 x)) 'x). Ответ: ( + 1 (+ (* 0 x) (* 1 3)))
;(diff '(- x (* 3 x)) 'x). Ответ: (- x (* 3 x))
;(diff '(* x ( + x 1)) 'x). Ответ: (+ (* 1 (+ x 1))(*(+ 1 0) x))

;Алгоритм на странице 43-44 здесь http://lisp.ru/datas/books/Lisp2.pdf

(defun diff (l x)
    (cond
        ((atom l)
            (if (eq l x) 1 0))
        ((eq (first l) '+)
            (list '+
                (diff (second l) x)
                (diff (third l) x)))
        ((eq (first l) '-)
            (list '-
                (diff (second l) x)
                (diff (third l) x)))
        ((eq (first l) '*)
            (list '+
                (list '*
                    (diff (second l) x)
                    (third l))
                (list '*
                    (diff (third l) x)
                    (second l))))
        ((eq (first l) '/)
            (list '+
                (list '/
                    (diff (second l) x)
                    (third l))
                (list '/
                    (diff (third l) x)
                    (second l))))
        (t l)
    )
)


(print (diff '(+ x (* 3 x)) 'x))
(print (diff '(- x (* 3 x)) 'x))
(print (diff '(* x ( + x 1)) 'x))