(with-open-file (stream (merge-pathnames #p"data.txt"
                                         (user-homedir-pathname))
                        :direction :output    ;; Write to disk
                        :if-exists :supersede ;; Overwrite the file
                        :if-does-not-exist :create)
  (dotimes (i 100)
    ;; Write random numbers to the file
    (format stream "~3,3f~%" (random 100))))