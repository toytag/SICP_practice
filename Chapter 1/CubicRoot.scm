(define (cubic-root x)
    (define (good-enough? guess)
        (< (abs (- x 
                   (* guess guess guess))) 
           0.001))
    (define (improve guess)
        (/ (+ (/ x 
                 (* guess guess)) 
              (* 2 guess)) 
           3))
    (define (cubic-root-iter guess)
        (if (good-enough? guess)
            guess
            (cubic-root-iter (improve guess))))
    (cubic-root-iter 1.0))

(display (cubic-root 8))
(newline)