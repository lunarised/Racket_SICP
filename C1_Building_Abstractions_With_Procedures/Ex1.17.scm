#lang sicp

(define (fast-mult x y)
(begin
    (display (fast-mult-recur x y))))


    
(define (fast-mult-recur x y)
    (if (= 1 y)
        x    
        (if (= (modulo y 2) 0)
            (fast-mult-recur (* x 2) (/ y 2))
            (+ x (fast-mult-recur  x (- y 1))))))


(fast-mult 244 121) 