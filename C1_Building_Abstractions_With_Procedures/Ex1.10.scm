#lang sicp

(define (A x y)
(cond ((= y 0) 0)
((= x 0) (* 2 y))
((= y 1) 2)
(else (A (- x 1) (A x (- y 1))))))

;;;f(n) = 2n
;;;g(n) = 2^n
;;;h(n) = 2^n^n(nTimes) for n>1