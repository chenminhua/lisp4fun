; ldb stands for load byte
(print
    (ldb (byte 8 0) #xabcd)    ; 205, 也就是 #xcd
)

(print 
    (ldb (byte 8 8) #xabcd)     ; 171, 也就 #xab
)