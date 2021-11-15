;;;;;;;;;;;;;;;;;;;;;;;;;; EXERCISE 1.1
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

;;;;;;;;;;;;;;;;;;;;;;;;;; EXERCISE 1.2
(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 3))))) (* 3 (- 6 2) (- 2 7)))

;;;;;;;;;;;;;;;;;;;;;;;;;; EXERCISE 1.3 (incomplete)
(define (sum_of_sqr x y)
  (+ (* x x) (* y y)))

(define (largest x y z)
  (cond ((and (> x y) (> x z)) x)
        ((and (> y x) (> y z)) y)
        (else z)))

(define (fn x y z)
  (sum_of_sqr (largest x y z) (largest x y z)))

(fn 1 2 3)

;;;;;;;;;;;;;;;;;;;;;;;;;; EXERCISE 1.4
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; (if (> b 0) + -) -> this procedure returns the operator "+" if
; b is positive or returns "-" if it's negative. This operator
; is supplied to the outer procedure which has the operands "a" and "b"

;;;;;;;;;;;;;;;;;;;;;;;;;; EXERCISE 1.5
; applicative order -> should go into a stack overflow
; normal order -> should return 0

;;;;;;;;;;;;;;;;;;;;;;;;;; EXERCISE 1.6

;;;;;;;;;;;;;;;;;;;;;;;;;; EXERCISE 1.7
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

; the above procedure will cause a problem if the input is < 0.001
; Alternative:

;;;;;;;;;;;;;;;;;;;;;;;;;; EXERCISE 1.8 (incomplete)
(define (cube-iter guess x)
  (if (good-enough? guess x)
    guess
    (cube-iter (improve guess x)
               x)))

; (define (improve guess x)
;   (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.001))

(define (cube-root x)
  (cube-iter 1.0 x))

