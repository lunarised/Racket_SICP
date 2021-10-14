#lang sicp

(define (fizzBuzzer x f b)
    (cond 
        ((and (= (modulo x f) 0) (= (modulo x b) 0) ) "fizzbuzz"  )
        ((= (modulo x f) 0) "fizz"  )
        ((=  (modulo x b) 0) "buzz" )
        (else x)))
        
        
(define (fizzBuzz f b ls)

    (map ( lambda (x) (fizzBuzzer x 3 5))  ls )
)



(define (recursive-fizz-buzz x n f b)
    (if (< x n)
    (
    (cond 
        ((and (= (modulo x f) 0) (= (modulo x b) 0) ) (display "fizzbuzz\n" ) )
        ((= (modulo x f) 0) (display "fizz\n")  )
        ((=  (modulo x b) 0) (display "buzz\n") )
        (else (display x)  )
    )

    (recursive-fizz-buzz (+ x 1) n f b )
    )
    "done"
    )
)



(fizzBuzz 3 5 (list 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32))

(recursive-fizz-buzz 1 10 3 5)