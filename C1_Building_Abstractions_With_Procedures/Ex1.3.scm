#lang sicp

(define (Ex1p3 a b c)
    (if (> a b) 
        (if ( > b c) (+ (* a a) (* b b)) (+ (* a a) (* c c)) )
       (if (> a c) (+ (* a a) (* b b)) (+ (* c c) (* b b)))
)
)
(Ex1p3 2 4 6)
(Ex1p3 6 4 2)
(Ex1p3 2 3 3)
