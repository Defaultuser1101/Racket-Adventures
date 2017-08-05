(define Fizz 3)
(define Buzz 5)

(define (FB n)
  (if (= n 100)
      (printf "\n")
      (begin
        (if (and (= (modulo n Fizz) 0) (= (modulo n Buzz) 0))
            (printf "FizzBuzz \n")
            (if (= (modulo n Buzz) 0)
                (printf "Buzz \n")
                (if (= (modulo n Fizz) 0)
                    (printf "Fizz \n")
                    (begin
                    (write n)
                    (printf "\n")
                    ))))
        (set! n (add1 n))
        (FB n)
        )))

(FB 1)
