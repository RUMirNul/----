;Использование с функцией высшего порядка
(defun compose (f g)
    (lambda (x) (funcall f (funcall g x)))
)

(defun pow (x)
    (* x x)
)

(print (let ((as (compose #'pow #'cos)))(funcall as -1)))