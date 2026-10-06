#lang racket
(require 2htdp/image lang/posn)
(define c (rectangle 500 500 "solid" "white"))
(define tf
  (overlay/xy
   (above
    (beside
     (circle 7 "solid" "darkorchid")
     (rectangle 12 1 "solid" (make-color 255 255 255 0))
     (circle 7 "solid" "darkorchid"))
    (rectangle 1 10 "solid" (make-color 255 255 255 0))
    (rectangle 40 8 "solid" "darkorchid"))
   -30 -29
   (triangle 100 "solid" "yellow")))
(define bb
  (overlay/xy
   (rectangle 130 115 "solid" (make-color 255 255 255 0))
   10 10
   (triangle 100 "solid" "darkgoldenrod")))
(define bd
  (overlay/xy
   bb
   0 86
   (polygon
    (list
     (make-posn 0 86)
     (make-posn 100 86)
     (make-posn 110 96)
     (make-posn 10 96))
    "solid"
    "goldenrod")))
(define ts
  (overlay/xy
   bd
   50 0
   (polygon
    (list
     (make-posn 50 0)
     (make-posn 100 86)
     (make-posn 110 96)
     (make-posn 60 10))
    "solid"
    "darkgoldenrod")))
(define tb
  (overlay/xy
   tf
   0 0
   ts))
(define ct
  (polygon
   (list
    (make-posn 0 24)
    (make-posn 24 0)
    (make-posn 108 0)
    (make-posn 84 24))
   "solid"
   (make-color 255 105 105)))
(define cs
  (polygon
   (list
    (make-posn 0 24)
    (make-posn 24 0)
    (make-posn 24 84)
    (make-posn 0 108))
   "solid"
   (make-color 155 0 0)))
(define cf
  (overlay/xy
   (overlay/xy
    (rectangle 108 108 "solid" (make-color 255 255 255 0))
    84 0
    cs)
   0 0
   ct))
(define cb
  (overlay/xy
   (square 84 "solid" "red")
   0 -24
   cf))
(define ce
  (overlay/xy
   (above
    (beside
     (star 14 "solid" "lime")
     (rectangle 10 1 "solid" (make-color 255 255 255 0))
     (star 14 "solid" "lime"))
    (rectangle 1 10 "solid" (make-color 255 255 255 0))
    (ellipse 46 10 "solid" "lime"))
   -9 -34
   cb))
(define sb
  (overlay/xy
   (ellipse 15 9 "solid" "white")
   -24 -15
   (overlay/xy
    (circle 46 "solid" "blue")
    0 0
    (circle 50 "solid" "midnightblue"))))
(define sf
  (overlay/xy
   (above
    (beside
     (rhombus 10 120 "solid" "pink")
     (rectangle 12 1 "solid" (make-color 255 255 255 0))
     (rhombus 10 120 "solid" "pink"))
    (rectangle 1 10 "solid" (make-color 255 255 255 0))
    (rectangle 50 10 "solid" "pink"))
   -24 -30
   sb))
(define h (max (image-height tb) (image-height ce) (image-height sf)))
(define t
  (overlay/xy
   (rectangle (image-width tb) (+ h 18) "solid" (make-color 255 255 255 0))
   0 (+ (- h (image-height tb)) 18)
   tb))
(define u
  (overlay/xy
   (rectangle (image-width ce) (+ h 18) "solid" (make-color 255 255 255 0))
   0 (- h (image-height ce))
   ce))
(define v
  (overlay/xy
   (rectangle (image-width sf) (+ h 18) "solid" (make-color 255 255 255 0))
   0 (- h (image-height sf))
   sf))
(define r
  (beside
   t
   (rectangle 22 1 "solid" (make-color 255 255 255 0))
   u
   (rectangle 38 1 "solid" (make-color 255 255 255 0))
   v))
(define a
  (underlay/xy
   c
   62 198
   r))
(save-image a "art.png")
