(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))

(define (improve guess x)
    (/ (+ guess (/ x guess)) 2))

(define (good-enough? guess x)
    (< (abs (- x (* guess guess))) 0.001))

(define (sqrt x)
    (sqrt-iter 1.0 x))

(display (sqrt 4))

; ----------------------------------------

(define (sqrt x)
    (define (improve guess x)
        (/ (+ guess (/ x guess)) 2))
    (define (good-enough? guess x)
        (< (abs (- x (* guess guess))) 0.001))
    (define (sqrt-iter guess x)
        (if (good-enough? guess x)
            guess
            (sqrt-iter (improve guess x) x)))
    (sqrt-iter 1.0 x))

(display (sqrt 4))