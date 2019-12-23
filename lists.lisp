(defparameter alist (list 1 2 3))

(print
    (first alist)
)

(print
    (second alist)
)

; list也是从0开始为下标的
(print
    (nth 2 alist)
)

(setf (second alist) 7)

(print alist)