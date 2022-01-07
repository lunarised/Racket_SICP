#lang sicp

(define (fast-mult x y)
    (define srt (runtime))
    (display (slow-mult-recur x y))
    (define fin (runtime))
(newline)
(display (- fin srt)) 
(newline)
(define srtB (runtime))
(display (fast-mult-recur x y))
(define finB (runtime))
(newline)
(display (- finB srtB)) 
)
    
(define (fast-mult-recur x y)
    (if (= 1 y)
        x    
        (if (= (modulo y 2) 0)
            (fast-mult-recur (* x 2) (/ y 2))
            (+ x (fast-mult-recur  x (- y 1))))))

(define (slow-mult-recur x y)
    (if (= 0 y)
    0
     (+ x (slow-mult-recur x (- y 1)  ))))

(fast-mult 24324 122331) 