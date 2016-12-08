;; Fazeli, Bijan
;; Lauguico, Marco
;; CS A250
;; December 7th, 2016
;;
;; Lab 17

#lang racket

;; double-second
(define double-second
  (lambda (lis)
    (cons (first lis) (cons (first (rest lis)) (rest lis)))))

;; func2
(define func2
  (lambda (lis)
    (cond
      [(or (or (empty? lis) (empty? (rest lis)) (empty? (rest (rest lis))))) '()]
      [else
        (cons
         (first lis) (cons
                      (first (rest lis)) (cons
                                          (first (rest (rest lis))) '())))])))

;; third-element
(define third-element
  (lambda (lis)
    (cond
      [(or (or (empty? lis) (empty? (rest lis)) (empty? (rest (rest lis))))) '()]
      [else
       (first (rest (rest lis)))])))

