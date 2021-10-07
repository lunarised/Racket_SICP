#lang sicp

(define (p) (p))
(define (test x y) 
(if (= x 0) 0 y))

;;; Lisp runs applicative order evaluation, which means terms are evaluated upon being seen
;;;(test 0 (p)) => Will recursively try to evaluate (p), but since (p) === (p) => It will infinitely
;;; recurse


;;; A Language like haskell has normal order evaluation (Lazy Evaluation). When evaluating
;;;(test 0 (p)) => Since x in test = 0, y is never needed to evaluate, therefore, the infinite
;;; recursion doesnt happen

