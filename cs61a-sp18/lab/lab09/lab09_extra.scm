;; Extra Scheme Questions ;;


; Q5
(define lst
  'YOUR-CODE-HERE
)

; Q6
(define (composed f g)
	(define (h x)
		(f (g x)))
	h
)

; Q7
(define (remove item lst)
	(filter (lambda (x) (not (= item x))) lst)
)


;;; Tests
(remove 3 nil)
; expect ()
(remove 3 '(1 3 5))
; expect (1 5)
(remove 5 '(5 3 5 5 1 4 5 4))
; expect (3 1 4 4)

; Q8
(define (max a b) (if (> a b) a b))
(define (min a b) (if (> a b) b a))
(define (gcd a b)
	(define large (max a b))
	(define small (min a b))
	(cond
		((= 0 small) large)
		((= 0 (modulo large small)) small)
		(else (gcd small (modulo large small)))
	)
)

;;; Tests
(gcd 24 60)
; expect 12
(gcd 1071 462)
; expect 21

; Q9
(define (no-repeats s)
	(cond 
		((null? s) s)
		(else (cons (car s) (no-repeats (remove (car s) (cdr s))))))
)

; Q10
(define (substitute s old new)
	(cond
		((null? s) s)
		((pair? (car s)) (cons (substitute (car s) old new) (substitute (cdr s) old new)))
		((eq? old (car s)) (cons new (substitute (cdr s) old new)))
		(else (cons (car s) (substitute (cdr s) old new))))
)

; Q11
(define (sub-all s olds news)
	(cond
		((null? olds) s)
		(else (sub-all (substitute s (car olds) (car news)) (cdr olds) (cdr news))))
)
