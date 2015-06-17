#lang racket

(define lower 1)
(define upper 100)

(define (guess)
  (quotient (+ lower upper) 2))

(define (smaller)
  (set! upper (max (sub1 (guess))))
  (guess))

(define (bigger)
  (set! lower (min (add1 (guess))))
  (guess))

(define (start n m)
  (set! lower n)
  (set! upper m)
  (guess))