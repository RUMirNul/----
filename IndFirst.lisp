(defun range (min max)
    (COND 
        ((EQ min max ) (cons  min nil))
        (t (append (range min (- max 1)) (cons max nil)))
    )
)

(print (range 1 10))
