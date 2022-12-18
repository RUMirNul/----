

(defun znak (l)
    (do (
      (elem l (cdr elem))
      )
      (nil)
      (when (endp (cdr elem)) (return t))
      (when (not (and ( < (min (car elem) (car(cdr elem))) 0) ( > (max (car elem) (car(cdr elem))) 0))) (return nil))
    )

)

(print (znak '(1 -2 1 -2 1 -2)))