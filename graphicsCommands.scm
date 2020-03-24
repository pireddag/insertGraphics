(define pi (acos -1))
;; A function to define a point in the TeXmacs graphics format using two coordinates
(define (pt x y)
  `(point ,(number->string x) ,(number->string y)))
;; Set points
(define xC (- (* 2 (cos (/ pi 3)))))
(define yC (* 2 (sin (/ pi 3))))
(define pA (pt -2 0))
(define pB (pt 2 0))
(define pC (pt xC yC))
(define tA (pt -2.3 -0.5))
(define tB (pt 2.1 -0.5))
(define tC (pt (- xC 0.2) (+ yC 0.2)))
;; Generate graphics
;; (define SchemeGraphics
;; (stree->tree
;;  `(with "gr-geometry" (tuple "geometry" "400px" "300px" "center")
;;     (graphics
;;       (with "color" "blue"  (text-at (TeXmacs) ,(pt -0.55 -0.75)))
;;       (with "color" "black" (arc ,pA ,pC ,pB))
;;       (with "color" "black" (line ,pA ,pB))
;;       (with "color" "red"   (cline ,pA ,pB ,pC))
;;       (with "color" "black" (text-at "A" ,tA))
;;       (with "color" "black" (text-at "B" ,tB))
;;       (with "color" "black" (text-at "C" ,tC))))))
(define SchemeGraphics
 `(with "gr-geometry" (tuple "geometry" "400px" "300px" "center")
    (graphics
      (with "color" "blue"  (text-at (TeXmacs) ,(pt -0.55 -0.75)))
      (with "color" "black" (arc ,pA ,pC ,pB))
      (with "color" "black" (line ,pA ,pB))
      (with "color" "red"   (cline ,pA ,pB ,pC))
      (with "color" "black" (text-at "A" ,tA))
      (with "color" "black" (text-at "B" ,tB))
      (with "color" "black" (text-at "C" ,tC)))))
