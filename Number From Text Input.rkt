#lang racket
(require racket/gui)

#|
  This could probably be made better
  Especially if it was finished
|#

(define-values (a b c d e f g h i j)
  (values 48 49 50 51 52 53 54 55 56 57))

(define dat 0)
(define datflip 0)
(define datlength 0)


(define-syntax intchar
  (syntax-rules ()
    ((_ a)
     (integer->char a))))

(define (flip n)
  (set! dat (list->string (reverse (string->list n)))) (write dat))

(define (parse o)
  (set! datlength (- (length o) 1))
)  
  
  
#|
(define (charnum n)
(if (<= 48 n)
    (if (>= 59 n)
        (begin
          (printf "james"))
        void)void))
|#



(define frame
  (new frame%
       [label "Numbers"]
       [min-width 150]
       ))

(define input
  (new text-field%
       [parent frame]
       [label "Input"]
       ))

(define Ok
  (new button%
       [parent frame]
       [label "OK"]
       [callback
        (λ (btn evnt)
          (set! datflip (send input get-value))
          (flip datflip)
          )]))



(send frame show #t)


