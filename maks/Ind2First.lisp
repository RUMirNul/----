; Нахождение площади прямоугольника с использованием лямбда-функции

(defun rectangleArea (x y)
    ((lambda (a b) (* a b)) x y)
)

(print (rectanglearea 2 4))