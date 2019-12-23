(defun many (n)
    (values n (* n 2) (* n 3)))

(multiple-value-list (many 2))

; should be 2
(print (nth-value 0 (many 2)))

; should be 4
(print (nth-value 1 (many 2)))

; should be 6
(print (nth-value 2 (many 2)))

; should be (2 4 6)
(print (multiple-value-bind (first second third) 
    (many 2)
    (list first second third))
)

