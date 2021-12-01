#lang sicp 

(define (Pascal row col)
(if (or (= col 0) (= col row))
1
(+ (Pascal (- row 1) (- col 1)) (Pascal (- row 1) col))))

(Pascal 10 5)