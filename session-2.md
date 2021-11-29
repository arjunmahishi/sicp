# Session 2

### Linear Recursive vs. Linear Iterative

- In a recursive process, the interpreter needs to keep a track of the operation that need to be performed
- In an iteratice process, each step gets a "new state" the is enough to determine what to do next
- If a procedure is calling itself, it does not mean that it is a *recursive process*. It really depends on how the process evolves
- Iterative processes can be designed to execute in constant space. They are called *tail recursive* processes
- In tail recursion, the recursive call is the last statement that is executed

### Exercise 1.9

Code
```scheme
(define (+ a b)
  (if (= a 0)
    b
    (inc (+ (dec a) b))))
```

Process evolution
```text
(+ 4 5)
(inc (+ (dec 4) 5))
(inc (+ (- 4 1) 5))
(inc (+ 3 5))
(inc 8)
(+ 8 1)
9
```

Code
```scheme
(define (+ a b)
  (if (= a 0)
    b
    (+ (dec a) (inc b))))
```

Process evolution
```text
(+ 4 5)
(+ (dec 4) (inc 5))
(+ 3 6)
9
```

### Exercise 1.10

```scheme
(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

(A 1 10) ; 1024
(A 2 4)  ; 65536
(A 3 3)  ; 65536
```

(pending math expressions)
