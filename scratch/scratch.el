
(defun helloworld (msg)
  (message msg))

(helloworld "helloworld")

(defun gcd (a b)
  (if (= b 0)
	  a
	(gcd b (% a b))))

(gcd 10 25)

(defun smallest-divider (n)
  (find-divisor n 2))

(defun find-divisor (n test-divisor)
  (cond ((> (* test-divisor test-divisor) 2) n)
		((divides? test-divisor n) test-divisor)
		(else (find-divisor n (+ test-divisor 1)))))

(defun divides? (a b)
	(= 0 (% b a)))

(divides? 3 6)

(defun prime? (n)
	(= n (smallest-divider n)))

(prime? 100)

(smallest-divider 100)

'(rose, violet daisy buttercup)

(message-box "miao")

(message "I am a bad guy. I wish god can save me")

(osx-lib-say "Glory to god")

(message "helloworld")

(make-interval 3 4)
