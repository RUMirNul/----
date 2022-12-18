
(defun lst (x)
    (COND 
        ((endp (cdr x)) (car x))
        (t (lst(cdr x)))
    )
)

(print (lst '(x y @ 1 31)))
