;; Fazeli, Bijan
;; Lauguico, Marco
;; CS A250
;; December 7th, 2016
;;
;; Lab 17

#lang racket

;; double-second
(define double-second
  (lambda (b)
    (cons (first b) (cons (first (rest b)) (rest b)))))

;; func2
(define func2
  (lambda (s)
    (cond
      [(or (or (empty? s) (empty? (rest s)) (empty? (rest (rest s))))) '()]
      [else
        (cons
         (first s) (cons
                      (first (rest s)) (cons
                                          (first (rest (rest s))) '())))])))

;; third-element
(define third-element
  (lambda (m)
    (cond
      [(or (or (empty? m) (empty? (rest m)) (empty? (rest (rest m))))) '()]
      [else
       (first (rest (rest m)))])))


;; double
(define double
  (lambda (a s)
    (cond
      [(empty? s) '()]
      [(equal? a (first s)) (cons a s)]
      [else (cons (first s) (double a (rest s)))])))