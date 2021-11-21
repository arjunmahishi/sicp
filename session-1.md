# Session 1 (Nov 15th 2021)

### Exercise 1.1

```
10
12
8
3
6
19
false
4
16
6
16
```

### Exercise 1.2

```scheme
(/ (+ 5 4 
      (- 2 
         (- 3 
            (+ 6 (/ 4 3)))))
   (* 3 
      (- 6 2)
      (- 2 7)))

; -0.25
```

### Exercise 1.3

```scheme
(define (sum_of_sqr x y)
  (+ (* x x) (* y y)))

(define (min x y)
  (if (< x y) x y))

(define (max x y)
  (if (> x y) x y))

(define (min_of_3 x y z) 
  (min (min x y) z))

(define (max_of_3 x y z) 
  (max (max x y) z))

(define (mid_of_3 x y z)
  (define biggest (max_of_3 x y z))
  (define smallest (min_of_3 x y z))
  (define total (+ x y z))
  (define sum_of_big_small (+ biggest smallest))
  (- total sum_of_big_small))

(define (fn x y z)
  (sum_of_sqr (max_of_3 x y z) (mid_of_3 x y z)))

(fn 1 2 3)

; 13
```

### Exercise 1.4

```scheme
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
```

`(if (> b 0) + -)` returns the operator `+` if b is positive or returns `-` if it's negative. This operator is supplied to the outer procedure which has the operands `a` and `b`

### Exercise 1.5
**applicative order** should go into a stack overflow <br>
**normal order** should return 0

### Exercise 1.6

### Exercise 1.7

```scheme
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))
```

The above procedure will cause a problem if the input is < 0.001

### Exercise 1.8 (incomplete)

``` scheme
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
```
