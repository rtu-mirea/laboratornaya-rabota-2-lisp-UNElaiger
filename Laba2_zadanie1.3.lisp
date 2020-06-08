;задание 1.3
(defun Search (N LST)
   (cond ((eq LST nil) "Элемент не был найден")
((eq (car LST) N) "Элемент найден")
(t (Search N (cdr LST)))
   )
)

(print (Search 3 '(2 6 3 9 4 8)))
