(defmacro while (condition &body body)
  `(loop while ,condition do (progn ,@body)))

(while (> 2 1)
  (print "hello")
  (print "world"))