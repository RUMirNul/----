; Нахождение значения квадратного уравнения
(defun quadraticEquation (a b c)
    (lambda (x) (+ (* a (* x x)) (+ (* b x) c)))
)

(print (funcall (quadraticequation 3 2 1) 2))
