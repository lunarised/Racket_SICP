#lang sicp

(define (mult a b)
    (mult-iter a b 0))

(define (mult-iter a b c)
    (if (= b 1)
        (+ c a)
        (if (= (modulo b 2) 0 )
            (mult-iter (+ a a) (/ b 2) c)
            (mult-iter a (- b 1) (+ c a)))))

(mult 2173 1123)