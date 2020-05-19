;задание 1.3
(defun Search (N List)
   (cond ((eq List nil) "Элемент не был найден")
((eq (car LIST) N) "Элемент найден")
(t (Search N (cdr List)))
   )
)

(print (Search 688 '(2 6 3 9 4 8)))
