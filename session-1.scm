; Exercise 1.1
; 10
; 12
; 8
; 3
; 6
; 19
; false
; 4
; 16
; 6
; 16

; Exercise 1.2
(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 3))))) (* 3 (- 6 2) (- 2 7)))

; Exercise 1.3
(define (sum_of_sqr x y)
  (+ (* x x) (* y y)))

(define (largest x y z)
  (cond ((and (> x y) (> x z)) x)
        ((and (> y x) (> y z)) y)
        (else z)))

(define (fn x y z)
  (sum_of_sqr (largest x y z) (largest x y z)))

(fn 1 2 3)

; Exercise 1.4
