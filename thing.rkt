# lang racket
(require 2htdp/image)
(define WIDTH 800)
(define HEIGHT 500)
(define canvas
  (rectangle WIDTH HEIGHT "solid"
	     "black"))
(define stars
  (underlay/xy
    (star 7 "solid" "white")
    170 60
    (underlay/xy
      (star 5 "solid" "white"
	    -210 90
	(underlay/xy
	  (star 8 "solid" "white")
	  280 -70
	  (star 4 "solid" "white")))))
  (define scene
    (underlay/xy
      canvas
      -190 -70
      planet))
  (define starscene
    (overlay scene stars))
  starsscene
