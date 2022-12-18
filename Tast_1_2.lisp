(defun len (x)
    (do (
            (n 0 (+ n 1))            
            (elem x (cdr elem))
        )     
        (nil)
        (when (endp elem) (return n))
    )
)
(print (len '(x y z)))

(defun lenn (x)
    (cond
        ((null x) 0)
        (t (+ 1 (lenn (cdr x))))
    )
)

(print (lenn '(x y z)))


