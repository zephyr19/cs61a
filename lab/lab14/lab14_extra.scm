
(define-macro (switch expr cases)
	(define (helper expr_val cases_val)
	    (if (eq? (eval expr_val) (car (car cases_val)))
	    	(car (cdr (car cases_val)))
	    	(helper expr_val (cdr cases_val))))
	(helper expr cases)
)