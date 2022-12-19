;Использование с функцией высшего порядка
(defun compose (f g)
    (lambda (x) (funcall g (funcall f x)))
)

(print (let ((as (compose #'abs #'tan)))(funcall as -1)))