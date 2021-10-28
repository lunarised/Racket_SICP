#lang sicp

(define (myFilter f ls)
(if (null? ls)
'()
    (if  (f (car ls))
        (cons   
            (car ls)
            (myFilter f (cdr ls)))
        (myFilter f (cdr ls)
))))

 (myFilter (lambda(a) (eqv? (modulo a 2) 0))  (list 1 2 3 4 5))
