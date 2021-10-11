#lang sicp


(define (average x y)
(/ (+ x y) 2))

(define (improve guess x)
(average guess (/ x guess)))


(define (good-enough? guess x)
(< (abs (- (improve-cubic guess x) guess)) (* guess 0.001)))

(define (cubic-iter guess x) 
        (if (good-enough? guess x)
        guess
        (cubic-iter (improve-cubic guess x) x)
        ))

(define (improve-cubic guess x)
       (/ (+ (/ x (* guess guess)   ) (* 2 guess)) 3))


(cubic-iter 1.1 5)