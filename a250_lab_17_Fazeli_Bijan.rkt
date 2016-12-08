;; Fazeli, Bijan
;; Lauguico, Marco
;; CS A250
;; December 7th, 2016
;;
;; Lab 17

#lang racket

(define double-second
  (lambda (lis)
    (cons (first lis) (cons (first (rest lis)) (rest lis)))))