(texmacs-module (insertGraphics insertGraphics))

(tm-define (insertGraphics graphicsFile)
	   (set! graphicsFile (tree->stree graphicsFile))
	   (load graphicsFile)
	   (stree->tree SchemeGraphics))
