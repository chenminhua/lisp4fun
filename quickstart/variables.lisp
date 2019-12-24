; local variable
(let ((str "hello world")) 
    (string-upcase str) 
    (print str))

; multiply local variables
; 6
(let ((x 1)
      (y 5))
    (print (+ x y))
)

; define variables whose initial values depend on previous variables, use let*
; 2
(let* ((x 1)
       (y (+ x 1)))
    (print y)
)

; dynamic variables: sort of like global variables
(defparameter *string* "I'm global")

(defun print-variable ()
  (print *string*))

(print-variable) ;; Prints "I'm global"

(let ((*string* "I have dynamic extent")) ;; Binds *string* to a new value
  (print-variable)) ;; Prints "I have dynamic extent"
;; The old value is restored

(print-variable) ;; Prints "I'm global"

