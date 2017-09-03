
(defun osx-lib-say-rnd (msg-list)
  (interactive)
  (let* ((l (length msg-list))
		 (i (random l))
		 (rnd-msg (nth i msg-list)))
	(osx-lib-say rnd-msg)))

;; use the stupid way instead
(defun elpy-shell-send-block-with-alert ()
  (interactive)
  (lexical-let*
	  ((msg-list '("Affirmative" "Roger that" "Acknowledge")))
	(osx-lib-say-rnd msg)
	(elpy-shell-send-block)))

(defun elpy-shell-send-region-or-buffer-with-alert ()
  (interactive)
  (lexical-let*
	  (
	   (score "
violin \"violin-1\":
  o4 f2   g4 a   b-2   a
violin \"violin-2\":
  o4 c2   e4 f   f2    f
viola:
  o3 a2 > c4 c   d2    c
cello:
  o3 f2   c4 f < b-2 > f
")
	   (msg-list '("Affirmative" "Roger that" "Acknowledge")))
	(osx-lib-say-rnd msg)
	(alda-play-text score)
	(elpy-shell-send-region-or-buffer)))

(progn (define-key elpy-mode-map "\C-c\C-r" 'python-shell-send-region)
	   (define-key elpy-mode-map "\C-c\C-c" 'elpy-shell-send-block-with-alert)
	   (define-key elpy-mode-map "\C-c\C-n" 'elpy-shell-send-current-statement)
	   (define-key elpy-mode-map "\C-c\C-b" 'elpy-shell-send-region-or-buffer-with-alert))

(defun elpy-check-with-alert ()
  (interactive)
   (osx-lib-say "Reporting In")
   (elpy-check))
(evil-declare-key 'normal python-mode-map (kbd "t") 'elpy-check-with-alert)
(defun elpy-test-with-alert ()
  (interactive)
  (let*
      ((msg-list '("Cross your finger"
                   "Fire in the hole"
                   "Taking Fire, Need Assistance"
                   "Go Go Go")))
    (osx-lib-say-rnd msg-list)
    (elpy-test)))
(evil-declare-key 'normal python-mode-map (kbd "T") 'elpy-test-with-alert)
