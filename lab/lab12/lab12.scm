(define (partial-sums stream)
  (define (helper pre stream)
  	(if (null? stream)
  		nil
	  	(begin 
	  		(define cur (+ pre (car stream)))
			(cons-stream 
				cur
				(helper cur (cdr-stream stream))))
  		))
  (helper 0 stream)
)