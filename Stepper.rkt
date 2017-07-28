#lang racket/gui

;-----
;CLICK STEP PROGRAM USING RACKET/GUI
;-----

;step counter
(define Step 0)


;range of gauge and stepping
(define Range 100)

;define window
(define Window
  (new dialog%
       [label "Stepper!"]
       ))

;define gauge
(define Gauge
  (new gauge%
       [label ""]
       [parent Window]
       [range Range]
       ))

;define step button
(define StepButton
  (new button%
       [label "Step"]
       [parent Window]
       [callback
        (λ (button event)
          (if (= Step Range)
              (begin
                (set! Step (- Step Step))
                (send Gauge set-value 0))
              (begin
                (set! Step (add1 Step))
                (send Gauge set-value Step))
              ))]))
              
;this displays the actuall window
(send Window show #t)
