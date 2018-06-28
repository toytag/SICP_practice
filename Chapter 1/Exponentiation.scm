(define (expt x a)
    (if (= a 0)
        1
        (* x (expt x (- a 1)))))

(display (expt 2 10))
(newline)

; ----------------------------------

(define (expt x a)
    (define (expt-iter product count)
        (if (= count 0)
            product
            (expt-iter (* x product) (- count 1))))
    (expt-iter 1 a))

(display (expt 2 10))
(newline)

; ----------------------------------

(define (square x) (* x x))

(define (fast-expt x a)
    (cond ((= a 0) 1)
          ((even? a) (square (fast-expt x (/ a 2))))
          (else (* x (fast-expt x (- a 1))))))

(display (fast-expt 2 10))
(newline)