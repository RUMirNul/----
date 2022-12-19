

(defun isbinary (tree)
    (cond
        ((null tree) t)
        (t (if (eq (length tree) 3)  (and (isbinary (second tree)) (isbinary (third tree)))  nil))
    )
)

(print (isbinary  '(2 (4()(1())) (5()()))))
