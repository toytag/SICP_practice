(define (fib n)
    (cond ((= n 0) 0)
          ((= n 1) 1)
          (else (+ (fib (- n 1))
                   (fib (- n 2))))))

(display (fib 40))
(newline)

; --------------------------------------

(define (fib n)
    (define (fib-iter pre pre-pre count)
        (if (= count n)
            pre
            (fib-iter (+ pre pre-pre) pre (+ count 1))))
    (fib-iter 1 0 1))

(display (fib 40))
(newline)