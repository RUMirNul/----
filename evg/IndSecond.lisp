(defun nod(x y)
    (COND 
        ((EQ x y) x)
        (t (nod (- (max x y) (min x y)) (min x y)))
    )
)

(defun simple (x y)
    (if (eq 1 (nod x y)) t nil)
)

(print (simple 13 26))