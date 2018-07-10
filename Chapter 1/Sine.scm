(define (cube x) (* x x x))

(define (p x) (- (* 3 x) (* 4 (cube x))))

(define (sine a)
    (if (< (abs a) 0.001)
        a
        (p (sine (/ a 3.0)))))

(display (sine 3.14))
(newline)

(display (sine 1.57))
(newline)