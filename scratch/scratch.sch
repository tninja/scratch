(if (> 2 1)
	2
	1)

(/ 3 2)

(symbol=? 'hello 'hello)

(+ (* 2 1)
   (/ 3 2))

(define compose (op1 op2 num)
  (op1 (op2 num)))
