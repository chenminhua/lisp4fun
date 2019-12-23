;;;;;;;;;;;;;;;;;;;;;;; map ;;;;;;;;;;;;;;;;;;;;;;;
; (NIL T NIL T NIL T)
(print
    (mapcar #'evenp (list 1 2 3 4 5 6))
)

; ("HELLO" "WORLD")
(print
    (mapcar #'string-upcase (list "hello" "world"))
)

; 自己实现 Mapcar
(defun my-map (function list)
    (if list
        (cons (funcall function (first list))
              (my-map function  (rest list)))
        nil))
; ("A" "B" "C")
(print 
    (my-map #'string-upcase (list "a" "b" "c"))
)

;;;;;;;;;;;;;;;;;;;;;;; reduce ;;;;;;;;;;;;;;;;;;;;;;;;
; 6
(print
    (reduce #'+ (list 1 2 3))
)

; 6000
(print 
    (reduce #'(lambda (a b)
                     (* a b))
                 (list 10 20 30))
)

;A: 2, B: 3
;A: 6, B: 4
;A: 24, B: 5
;A: 120, B: 6
(reduce #'(lambda (a b)
                     (format t "A: ~A, B: ~A~%" a b)
                     (* a b))
                 (list 1 2 3 4 5 6))


;;;;;;;;;;;;;;;;;;;;;;;;; sorting ;;;;;;;;;;;;;;;;;;;;;;;;;
(print
    (sort (list 9 2 4 7 3 0 8) #'<)
)

;;;;;;;;;;;;;;;;;;;;;;;;;; Destructing ;;;;;;;;;;;;;;;;;;;;;
(defun destructure (list)
    (destructuring-bind (first second &rest others)
    list
    (format t "First: ~A~%" first)
    (format t "Second: ~A~%" second)
    (format t "Rest: ~A~%" others)))


(destructure (list 1 2 3 4 5 6))

