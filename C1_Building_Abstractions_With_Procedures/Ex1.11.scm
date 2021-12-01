#lang sicp

(define (tribonacci n)
    (if (> 3 n) 
        n
        (+ 
            (tribonacci (- n 1)) 
            (* 2 (tribonacci (- n 2))) 
            (* 3 (tribonacci (- n 3))))
    )
)

(tribonacci 5)


(define (trib n) 
    (define (iterTrib i a b c)
        (if (= i 0)
            a
            (iterTrib (- i 1) (+ a (* 2 b) (* 3 c)) a b)
        )
    )

    (if (< n 3) 
        n
        (iterTrib (- n 2) 2 1 0)
    )
)

(trib 5)