;Алгоритм на странице 43 здесь http://lisp.ru/datas/books/Lisp2.pdf

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