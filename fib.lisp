; 执行方式， sbcl --script fib.lisp

(defun fib (n)
  "Return the nth Fibonacci number."
  (if (< n 2)
      n
      (+ (fib (- n 1))
         (fib (- n 2)))))

; 调用函数的第一种方式
(print (fib 30))

; 调用函数的第二种方式
(print (funcall #'fib 30))

; 调用函数的第三种方式
(print (apply #'fib (list 30))) 