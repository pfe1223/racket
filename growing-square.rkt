;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname growing-square) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)
(require 2htdp/universe)

(define WIDTH 100)
(define HEIGHT 100)
(define SCENE (empty-scene WIDTH HEIGHT)) 

(define (number->square s)
  (place-image (square s "solid" "red") 0 0 SCENE))

(define (reset s ke)
  0)

(define (200? s)
  (= s 200))

(big-bang 0
            [to-draw number->square]
            [on-tick add1]
            [stop-when 200?]
            [on-key reset])
