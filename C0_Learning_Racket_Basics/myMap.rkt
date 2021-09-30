#lang sicp

;;; (define (fizzbuzz b)     (cond
;;;         [(> 1 b)0.1]
;;;         [else 0.2]
;;;         )
;;;         )
;;; (println (fizzbuzz -2))

(define (myMap f ls) 
(if (null?  ls) 
'()
(cons (f (car ls))
  (myMap f (cdr ls)))))

(myMap (lambda (a) (+ a 2)) (list 1 2 3 4))