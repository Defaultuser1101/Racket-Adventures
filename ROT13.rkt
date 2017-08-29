;this aint fully working and could be made WAY bettr

#lang racket

;Plaintext
(define-values (a b c d e f g h i j k l m n o p q r s t u v w x y z)
       (values 'n'o'p'q'r's't'u'v'w'x'y'z'a'b'c'd'e'f'g'h'i'j'k'l'm))


(define acc 0)
(define dat 0)
(define cha 0)

;initialisation of cypher
(define (in str)
  (cond
    [(string? str)
     (set! acc (string-length str))
     (set! dat str)
     (encrypt dat acc)
     ]))


;turning string into values and writing values
(define (encrypt String Position)
  (if (= Position 0)
      (printf "\n")
      (begin
        (set! cha (string-ref String (- Position 1)))
        (iftree cha)
        (set! Position (sub1 Position))
        (encrypt dat Position)
        )))



(define (iftree n)
  (cond
    [(eq? n #\a)
     (write a)]
    [(eq? n #\b)
     (write b)]
    [(eq? n #\c)
     (write c)]
    [(eq? n #\d)
     (write d)]
    [(eq? n #\e)
     (write e)]
    [(eq? n #\f)
     (write f)]
    [(eq? n #\g)
     (write g)]
    [(eq? n #\h)
     (write h)]
    [(eq? n #\i)
     (write i)]
    [(eq? n #\j)
     (write j)]
    [(eq? n #\k)
     (write )]
    [(eq? n #\l)
     (write l)]
    [(eq? n #\m)
     (write m)]
    [(eq? n #\n)
     (write n)]
    [(eq? n #\o)
     (write o)]
    [(eq? n #\p)
     (write p)]
    [(eq? n #\q)
     (write q)]
    [(eq? n #\r)
     (write r)]
    [(eq? n #\s)
     (write s)]
    [(eq? n #\t)
     (write t)]
    [(eq? n #\u)
     (write u)]
    [(eq? n #\v)
     (write v)]
    [(eq? n #\w)
     (write w)]
    [(eq? n #\x)
     (write x)]
    [(eq? n #\y)
     (write y)]
    [(eq? n #\z)
     (write z)]))

