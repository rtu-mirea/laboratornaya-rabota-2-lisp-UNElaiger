;задание 3
(defun comprsf (all i)
    (if (= (nth 1 i) (nth 1 (car all)))
        (append (list (list (+ 1 (nth 0 (car all))) (nth 1 i))) (cdr all))
        (append (list i) all)
    )
)
(defun mapf (i) 
    (list 1 i)
)
(defun unmapf (i) 
    (if (= (nth 0 i) 1)
        (nth 1 i) i
    )
)
;Функция сжатия 
(defun compress (List)
    (map 'list #'unmapf
        (cdr
            (reverse
                (reduce
                    #'comprsf
                    (map 'list #'mapf List)
                    :initial-value (list(list 1 -1))
                 )
             )
         )
    )
)

;Функция расжатия 
(defun decompress(List)
  (loop for element in List
    if (integerp element) collect element
    if (listp element) nconc (make-list (car element) 
  :initial-element (cadr element))))

(print (compress (list 5 5 5 1 1 1 7 7 4 6 6 9)))
(print (decompress (list (list 1 2) (list 3 4) (list 5 6))))
