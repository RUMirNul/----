;Напишите функцию, которая проверяет, что список задает бинарное дерево. Формат представления бинарного дерева: пустое дерево - (), 
;дерево - (атом поддерево1 поддерево2).
;(isbinary '(2 (4()(1()())) (5()())). Ответ: T

(defun isbinary (tree)
    (cond
        ((null tree) t)
        (t (if (eq (length tree) 3)  (and (isbinary (second tree)) (isbinary (third tree)))  nil))
    )
)

(print (isbinary  '(2 (4()(1()())) (5()()))))
(print (isbinary  '(2 (4()(1())) (5()()))))
