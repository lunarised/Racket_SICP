#lang sicp

(define (good-enough? guess x)
(< (abs (- (* guess guess) x)) 0.001))

(define (average x y)
(/ (+ x y) 2))

(define (improve guess x)
(average guess (/ x guess)))

(define (sqrt-iter guess x)
(if (good-enough? guess x)
guess
(sqrt-iter (improve guess x) x)))


(sqrt-iter 10 36)

;;; If we use really small numbers, we end up with values that are no where near close enough
(sqrt-iter 0.0001 0.0000000001) ;;; Answer is 0.00001 but will evaluate to 0.0001 because the tolerance
                                ;;; in good-enough? allows it to

;;; If we use really big numbers, we end up with tolerances that are impossibly hard to get. Factor
;;; in lossiness from Floating point notation and it can be quite awkward




(sqrt-iter 1000010 1000000000000)


;;; A better way to work this out would be to see how much the improve alters the outcome

(define (better-good-enough? guess x)
(< (abs (- (improve guess x) guess)) (* guess 0.001)))

(define (better-sqrt-iter guess x)
(if (better-good-enough? guess x)
guess
(sqrt-iter (improve guess x) x)))

(better-sqrt-iter 0.0001 0.0000000001)
(better-sqrt-iter 1000010 1000000000000)