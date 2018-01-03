
;; lilypond
(autoload 'LilyPond "lilypond-mode")
(setq auto-mode-alist
     (cons '("\\.ly$" . LilyPond-mode) auto-mode-alist))
(require 'lilypond-mode)

;; TODO: lilypond-templates need to be refined
;; (load-library "~/.emacs.d/plugins/lilypond-templates/lilypond-skeletons.el")
;; (require 'lilypond-skeletons)

;; lyqi
;; (load-library "~/.emacs.d/plugins/lyqi/lp-base.el")
;; (load-library "~/.emacs.d/plugins/lyqi/lyqi-pitchnames.el")
;; (load-library "~/.emacs.d/plugins/lyqi/lyqi-custom.el")
;; (load-library "~/.emacs.d/plugins/lyqi/lyqi-words.el")
;; (load-library "~/.emacs.d/plugins/lyqi/lyqi-syntax.el")
;; (load-library "~/.emacs.d/plugins/lyqi/lyqi-midi.el")
;; (load-library "~/.emacs.d/plugins/lyqi/lyqi-indent.el")
;; (load-library "~/.emacs.d/plugins/lyqi/lyqi-editing-commands.el")
;; (load-library "~/.emacs.d/plugins/lyqi/lyqi.el")
;; (require 'lyqi)

;; (add-to-list 'auto-mode-alist '("\\.ly$" . lyqi-mode))
;; (add-to-list 'auto-mode-alist '("\\.ily$" . lyqi-mode))

(custom-set-variables
 '(lyqi:prefered-languages '(english))
 '(lyqi:prefered-octave-mode 'absolute)
 '(lyqi:keyboard-mapping 'azerty)
 '(lyqi:custom-key-map '(("w" "\\trill")
                         ("x" (space-around . "\\appoggiatura"))
                         ("n" "~")
                         ("," "(")
                         (";" ")")
                         (":" "[")
                         ("=" "]")
                         ("\C-m" lyqi:insert-pipe-and-return)
                         ("$" lyqi:insert-pipe-and-return)))
 '(lyqi:midi-backend 'osx)
 '(lyqi:pdf-command "open")
 '(lyqi:midi-command "timidity")
 ;; ...
)

;; eval for lilypond code
(require 'f)
(require 's)

(setq lilypond_eval_simple_variable "")

(defun lilypond-play-text (text)
  (let* ((lilypond_eval_simple_variable_label "${variable}")
		 (lilypond_eval_simple_snippet_label "${snippet}")
		 (lilypond_eval_simple_template "~/.emacs.d/.emacs/lilypond_eval_simple_template.ly")
		 (lilypond_eval_simple_tmp "lilypond_eval_simple.ly")
		 (lilypond_eval_simple_midi "lilypond_eval_simple.midi")
		 (template (f-read lilypond_eval_simple_template))
		 (lilypond-content (s-replace lilypond_eval_simple_variable_label lilypond_eval_simple_variable
									  (s-replace lilypond_eval_simple_snippet_label text template)))
		 (lilypond-cmd (format "lilypond %s" lilypond_eval_simple_tmp))
		 (timidity-cmd (format "timidity %s" lilypond_eval_simple_midi)))
	(f-write-text lilypond-content 'utf-8 lilypond_eval_simple_tmp)
	(shell-command lilypond-cmd)
	(shell-command timidity-cmd)
	(f-delete lilypond_eval_simple_tmp)
	(f-delete lilypond_eval_simple_midi)
	))

(defun lilypond-set-variable (start end)
  "Set the selected region of text as lilypond variable"
  (interactive "r")
  (setq lilypond_eval_simple_variable
   (buffer-substring-no-properties start end)))

(defun lilypond-play-region (start end)
  "Plays the current region of lilypond code."
  (interactive "r")
  (lilypond-play-text
   (buffer-substring-no-properties start end)))

(defun lilypond-play-line ()
  "Plays the current line of lilypond code."
  (interactive)
  (lilypond-play-region (line-beginning-position) (line-end-position)))

(defun lilypond-play-bar ()
  "Plays the current bar of lilypond code."
  (interactive)
  (let* ((origin-position (point))
		 (previous-bar-position (search-backward "|")))
	(goto-char origin-position)
	(let* ((next-bar-position (search-forward "|")))
	  (lilypond-play-region previous-bar-position next-bar-position)
	  (goto-char origin-position)
	  )
	)
  )

(progn (define-key LilyPond-mode-map "\C-c\C-r" 'lilypond-play-region)
	   (define-key LilyPond-mode-map "\C-c\C-n" 'lilypond-play-line)
	   (define-key LilyPond-mode-map "\C-c\C-b" 'lilypond-play-bar)
	   (define-key LilyPond-mode-map "\C-c\C-v" 'lilypond-set-variable)
	   )
