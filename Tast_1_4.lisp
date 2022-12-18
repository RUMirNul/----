(defun nod(x y)
    (COND 
        ((EQ x y) x)
        (t (nod (- (max x y) (min x y)) (min x y)))
    )
)

(print (nod 7 19))