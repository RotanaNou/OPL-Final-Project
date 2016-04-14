#lang racket/gui

(require racket/gui
         racket/draw)

;define fields 
(define main-frame-width 600)
(define main-frame-height 300)
(define left-panel-button-height 10)
(define left-panel-button-width 150)
(define middle-msg-panel-width 50)
(define middle-msg-panel-height 10)
; create the application frame
(define make-frame
  (new frame%
       [label "Home Automation"]
       [width main-frame-width]
       [height main-frame-height]))
; display message 
(define msg (new message% [parent make-frame]
                          [label "No events so far..."]))
; create horizontal panel of inside parent frame
(define horizontal-panel
  (new horizontal-panel% [parent make-frame]))
; create left panel
(define left-frame-panel
  (new group-box-panel%
       [parent horizontal-panel]
       [label "Control Category"]))
; create middle panel
(define middle-frame-panel
  (new group-box-panel%
       [parent horizontal-panel]
       [label "Switches Status"]))
; create most right panel 
(define right-frame-panel
  (new group-box-panel%
       [parent horizontal-panel]
       [label "Temperature and Time"]))
; create left panels buttons
;First button from top
(define left-panel1-stuff
  (lambda ()
    (begin
       (define left-child-panel (new horizontal-panel%
                                     [parent left-frame-panel]))
       (new button%
            [parent left-child-panel]
            [label "Front Door"]
            [min-width left-panel-button-width]
            [min-height left-panel-button-height])
       )))
;second button from top
(define left-panel2-stuff
  (lambda ()
    (begin
       (define left-child-panel (new horizontal-panel%
                                     [parent left-frame-panel]))
       (new button%
            [parent left-child-panel]
            [label "Television"]
            [min-width left-panel-button-width]
            [min-height left-panel-button-height])
       )))
;third button from top
(define left-panel3-stuff
  (lambda ()
    (begin
       (define left-child-panel (new horizontal-panel%
                                     [parent left-frame-panel]))
       (new button%
            [parent left-child-panel]
            [label "Air Conditioner"]
            [min-width left-panel-button-width]
            [min-height left-panel-button-height])
       )))
;litchen light button 
(define left-panel4-stuff
  (lambda ()
    (begin
       (define left-child-panel (new horizontal-panel%
                                     [parent left-frame-panel]))
       (new button%
            [parent left-child-panel]
            [label "Kitchen Light"]
            [min-width left-panel-button-width]
            [min-height left-panel-button-height])
       )))
;status log
;First message status
(define middle-panel1-stuff
  (lambda ()
    (begin
       (define middle-child-panel (new horizontal-panel%
                                     [parent middle-frame-panel]))
       (new message%
            [parent middle-child-panel]
            [label "Front Door: off"]
            [min-width middle-msg-panel-width]
            [min-height middle-msg-panel-height])
       )))
;second message status
(define middle-panel2-stuff
  (lambda ()
    (begin
       (define middle-child-panel (new horizontal-panel%
                                     [parent middle-frame-panel]))
       (new message%
            [parent middle-child-panel]
            [label "Television: off"]
            [min-width middle-msg-panel-width]
            [min-height middle-msg-panel-height])
       )))
; Third message status
(define middle-panel3-stuff
  (lambda ()
    (begin
       (define middle-child-panel (new horizontal-panel%
                                     [parent middle-frame-panel]))
       (new message%
            [parent middle-child-panel]
            [label "Air Conditioner: off"]
            [min-width middle-msg-panel-width]
            [min-height middle-msg-panel-height])
       )))
; Fourth message status
(define middle-panel4-stuff
  (lambda ()
    (begin
       (define middle-child-panel (new horizontal-panel%
                                     [parent middle-frame-panel]))
       (new message%
            [parent middle-child-panel]
            [label "Kitchen Light: off"]
            [min-width middle-msg-panel-width]
            [min-height middle-msg-panel-height])
       )))




;make fram visible
(left-panel1-stuff)
(left-panel2-stuff)
(left-panel3-stuff)
(left-panel4-stuff)
(middle-panel1-stuff)
(middle-panel2-stuff)
(middle-panel3-stuff)
(middle-panel4-stuff)
(send make-frame show #t)