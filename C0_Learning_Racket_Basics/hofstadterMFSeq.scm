#lang sicp

(define (F n) 
    (if (= 0 n) 
        1
        (- n (M (F (- n 1) )))))

(define (M n) 
    (if (= 0 n) 
        0
        (- n (F (M (- n 1) )))))

(M 500)
(F 500)