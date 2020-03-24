(texmacs-module (insertGraphics insertGraphics))

(tm-define (insertGraphics graphicsFile)
	   (set! graphicsFile (tree->stree graphicsFile))
	   ;; The following two lines are commented out at the moment as they are too dangerous (allow the running of any code)
	   ;; Working on how to filter the commands allowed through load
;;	   (load graphicsFile)
;;	   (stree->tree SchemeGraphics)
	   )
