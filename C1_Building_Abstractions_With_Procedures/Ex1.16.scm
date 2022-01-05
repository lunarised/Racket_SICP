#lang sicp

(define (fast-exp b n)
    (fast-exp-recur b n)
    (fast-exp-iter b n 1))


(define (fast-exp-iter b n p)
    (if (= 0 n) 
        p
        (if (= (modulo n 2) 0)
            (fast-exp-iter (* b b) (/ n 2) p)
            (fast-exp-iter b (- n 1) (* p b)))))

    
(define (fast-exp-recur b n)
    (if (= 0 n)
        1
        (if (= (modulo n 2) 0)
            (fast-exp-recur (* b b) (/ n 2))
            (* b (fast-exp-recur  b (- n 1))))))


(fast-exp 2 11)