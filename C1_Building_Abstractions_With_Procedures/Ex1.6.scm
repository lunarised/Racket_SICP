#lang sicp

(define (new-if predicate then-clause else-clause)
        (cond (predicate then-clause)
        (else else-clause)))

(new-if (= 2 2) 0 5)
(new-if (= 2 4) 0 5)

;;; In this case, the new if runs like normal, as nothing 
;;; can be further evaluated. However in this case


(define (p) (p))

;;;(new-if (= 2 2) 0 (p))

;;; This will hang as it is using applicative order evaluation.
;;; The following code will not hang as (if x y z) is evaluated 
;;; lazily, via normal order evaluation

(if (= 2 2) 0 (p))

;;; As (p) is never hit in the execution tree (under normal
;;; order evaluation) It never gets evaluated, and thus the 
;;; program never hangs



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

(sqrt-iter 10000 36)

(define (sqrt-iter-weird guess x)
(new-if (good-enough? guess x)
guess
(sqrt-iter-weird (improve guess x) x)))


(sqrt-iter-weird 10000 36)


;;; Whether or not the guess is close enough, with the weird new-if,
;;; applicative evaluation happens, essentially causing the next iteration
;;; to be caluclated, even if the current value is good-enough