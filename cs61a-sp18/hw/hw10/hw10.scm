(define (accumulate combiner start n term)
  (if (= n 0)
      start
      (combiner (term n) (accumulate combiner start (- n 1) term))
  )
)

(define (accumulate-tail combiner start n term)
	(define (tail-helper outcome n)
		(if (= n 1)
			(combiner (term n) outcome)
			(tail-helper (combiner (term n) outcome) (- n 1)))
	)
	(tail-helper start n)
)

(define-macro (list-of expr for var in seq if filter-fn)
	`(map (lambda (,var) ,expr) (filter (lambda (,var) ,filter-fn) ,seq))
)