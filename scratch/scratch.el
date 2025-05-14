
(defun merry-christmas ()
  "Display a Merry Christmas message in a popup box."
  (interactive)
  (message-box "Merry Christmas!"))

(defun happy-a-lot-new-year ()
  "Display multiple Happy New Year messages in a popup box."
  (interactive)
  (message-box "Happy New Year!\nHappy New Year!\nHappy New Year!\nHappy New Year!\nHappy New Year!"))

(setq-local auto-revert-use-notify t)
(buffer-modified-p)
(setq-local auto-revert-interval 1)

(helloworld "helloworld")

(defun gcd (a b)
  (if (= b 0)
	  a
	(gcd b (% a b))))

(gcd 10 25)

(defun helloworld ()
  "Display a Hello World message in a popup box."
  (interactive)
  (message-box "Hello World!"))

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

;; check vterm

(defun switch-to-buffer-specific-vterm-shell ()
  (interactive)
  (let* ((vterm-buffer-name (format "*%s*" (buffer-name))))
    (vterm-other-window)
    (rename-buffer vterm-buffer-name)))

(defun vterm-shell-send-region (start end)
  (interactive "r")
  (let* ((vterm-buffer-name (format "*%s*" (buffer-name)))
         (region-str (buffer-substring start end)))
    (comint-send-string vterm-buffer-name region-str)
    (comint-send-string vterm-buffer-name "\n")
    (sleep-for 0 100)
    ))

(defun vterm-shell-send-block ()
  (interactive)
  (let* ((p (point)))
    (mark-paragraph)
    (vterm-shell-send-region (region-beginning) (region-end))
    (goto-char p)))

(defun vterm-shell-send-buffer ()
  (interactive)
  (let* ((p (point)))
    (mark-whole-buffer)
    (vterm-shell-send-region (region-beginning) (region-end))
    (goto-char p)))

;; check dall-e functions

(setq dall-e-output (dall-e-shell-post-prompt "please plot a chart for a 6 year old boy happily playing CATAN game?"))

(setq dall-e-output (dall-e-shell-post-prompt "please plot a chart for a 6 year old boy happily playing TICKET TO RIDE game?"))

(find-file dall-e-output)

(dired dall-e-output)

(message dall-e-output)

/var/folders/pm/rj4rl8nj6gncypt07mwchjp80000gp/T/1703990908.png

(insert-image
 (create-image dall-e-output
               'png nil :width 400 :height 400)
 )

(setq car-stolen-png (dall-e-shell-generate-image "More than 1 million vehicles were stolen in the United States in 2022, according to the National Insurance Crime Bureau, and nearly 500,000 vehicles were reported stolen in the first half of 2023. Nobody, regardless of where we live or the deterrents we put in place, is immune to this kind of crime. So what can we do to keep our wheels safe?"))

(dired-other-window car-stolen-png)

There once was a boy named Nikolar who sometimes felt uncertain about the right way to act. "I want to be a good person," he told his friends. "But i don't always know the best way to do that." Nikolai's friends understaood and they wanted to help him. "If only i could find the answers to my three questions, " Nikolai continured, "then i would always know what to do."
/Users/tninja/tmp/dall-e-image/1704047867.png
 
/Users/tninja/tmp/dall-e-image/1704047778.png
 
;; check native compile

(featurep 'native-compile)

(and (fboundp 'native-comp-available-p) (native-comp-available-p))


(defun ancilla--call-adaptor-with-instruction (mode)
  "Call the AI-powered adaptor with the given MODE and instruction.
MODE should be either 'rewrite or 'generate.  The function prompts
the user for an instruction, gets the current buffer context, and
calls the appropriate function in the adaptor.  If the adaptor
returns a suggestion, the function applies the suggestion to the
buffer.
If `ancilla-show-confirmation' is set to 't', the function shows a
confirmation message before applying the suggestion.
If `ancilla-show-confirmation' is set to 'rewrite-only', the
function shows a confirmation message only when MODE is 'rewrite'.
The function also calls any hooks registered with the
`ancilla-hooks' property of the adaptor.  Each hook is called with
a plist containing the keys :instruction, :buffer-context, and
:mode."
  (let* ((instruction (ancilla--get-instruction mode))
         (buffer-context (ancilla--get-buffer-context))
         (adaptor-request-fn (ancilla--get-adaptor-request-fn mode))
         (request-callback-fn (ancilla--get-request-callback-fn mode buffer-context)))
    (ancilla--run-hooks mode instruction buffer-context)
    (funcall adaptor-request-fn
             :instruction instruction
             :buffer-context buffer-context
             :callback request-callback-fn)))

(defun ancilla--get-instruction (mode)
  "Prompt the user for an instruction based on MODE."
  (if (eq mode 'ask)
      (read-string "Question: ")
    (read-string "Instruction: ")))

(defun ancilla--get-adaptor-request-fn (mode)
  "Get the appropriate adaptor request function based on MODE."
  (let ((adaptor-request-fn-name
         (cond
          ((eq mode 'rewrite) 'ancilla-rewrite)
          ((eq mode 'generate) 'ancilla-generate)
          ((eq mode 'ask) 'ancilla-ask))))
    (get ancilla-adaptor adaptor-request-fn-name)))

(defun ancilla--get-request-callback-fn (mode buffer-context)
  "Get the appropriate request callback function based on MODE and BUFFER-CONTEXT."
  (cond
   ((memq mode '(rewrite generate))
    (apply-partially 'ancilla--diff-replace-selection
                     mode
                     (plist-get buffer-context :excursion)
                     (plist-get buffer-context :selection)))
   (t 'ignore)))

(defun ancilla--run-hooks (mode instruction buffer-context)
  "Run hooks registered with the `ancilla-hooks' property of the adaptor."
  (when-let ((hooks (get ancilla-adaptor 'ancilla-hooks)))
    (dolist (hook hooks)
      (funcall hook
               :instruction instruction
               :buffer-context buffer-context
               :mode mode))))

(defun hello-world ()
  "Print 'Hello, World!' message in the minibuffer."
  (interactive)
  (message "Hello, World!"))

;; Example usage:
;; (hello-world)

(gptel-assistant-ask-and-insert-answer "hello")

(use-package copilot
  :straight (:host github :repo "copilot-emacs/copilot.el" :files ("*.el"))
  :ensure t)

(use-package aider
  :straight (:host github :repo "tninja/aider.el" :files ("*.el"))
  :ensure t)

(use-package aider
  :config
  ;; For latest claude sonnet model
  (setq aider-args '("--model" "sonnet"))
  (setenv "ANTHROPIC_API_KEY" anthropic-api-key)
  ;; Or chatgpt model
  ;; (setq aider-args '("--model" "o3-mini"))
  ;; (setenv "OPENAI_API_KEY" <your-openai-api-key>)
  ;; Or use your personal config file
  ;; (setq aider-args `("--config" ,(expand-file-name "~/.aider.conf.yml")))
  ;; ;;
  ;; Optional: Set a key binding for the transient menu
  (global-set-key (kbd "C-c a") 'aider-transient-menu))

(package-vc-install '(aider :url "https://github.com/tninja/aider.el"))

(use-package aider
  ;; :straight (:host github :repo "tninja/aider.el" :files ("*.el"))
  :vc (:url "https://github.com/tninja/aider.el.git")
  :bind
  ("C-c e" . 'aider-transient-menu))

Debugger entered--Lisp error: (file-missing "Cannot open load file" "No such file or directory" "aider-core")
  require(aider-core)
  load-with-code-conversion("/Users/qiang/.emacs.d/straight/build/aider/aider.el" "/Users/qiang/.emacs.d/straight/build/aider/aider.el" t t)
  require(aider nil t)
  (not (require 'aider nil t))
  (if (not (require 'aider nil t)) (display-warning 'use-package (format "Cannot load %s" 'aider) :error) (use-package-statistics-gather :config 'aider nil) (let ((now (current-time))) (message "%s..." "Configuring package aider") (prog1 (condition-case err (progn (setq aider-args '("--model" "sonnet")) (global-set-key (kbd "C-c e") 'aider-transient-menu) t) ((debug error) (funcall use-package--warning29 :config err))) (let ((elapsed (float-time (time-subtract ... now)))) (if (> elapsed 0.1) (message "%s...done (%.3fs)" "Configuring package aider" elapsed) (message "%s...done" "Configuring package aider"))))) (use-package-statistics-gather :config 'aider t))
  (prog1 (if (not (require 'aider nil t)) (display-warning 'use-package (format "Cannot load %s" 'aider) :error) (use-package-statistics-gather :config 'aider nil) (let ((now (current-time))) (message "%s..." "Configuring package aider") (prog1 (condition-case err (progn (setq aider-args '...) (global-set-key (kbd "C-c e") 'aider-transient-menu) t) ((debug error) (funcall use-package--warning29 :config err))) (let ((elapsed (float-time ...))) (if (> elapsed 0.1) (message "%s...done (%.3fs)" "Configuring package aider" elapsed) (message "%s...done" "Configuring package aider"))))) (use-package-statistics-gather :config 'aider t)) (let ((elapsed (float-time (time-subtract (current-time) now)))) (if (> elapsed 0.1) (message "%s...done (%.3fs)" "Loading package aider" elapsed) (message "%s...done" "Loading package aider"))))
  (let ((now (current-time))) (message "%s..." "Loading package aider") (prog1 (if (not (require 'aider nil t)) (display-warning 'use-package (format "Cannot load %s" 'aider) :error) (use-package-statistics-gather :config 'aider nil) (let ((now (current-time))) (message "%s..." "Configuring package aider") (prog1 (condition-case err (progn (setq aider-args ...) (global-set-key ... ...) t) ((debug error) (funcall use-package--warning29 :config err))) (let ((elapsed ...)) (if (> elapsed 0.1) (message "%s...done (%.3fs)" "Configuring package aider" elapsed) (message "%s...done" "Configuring package aider"))))) (use-package-statistics-gather :config 'aider t)) (let ((elapsed (float-time (time-subtract (current-time) now)))) (if (> elapsed 0.1) (message "%s...done (%.3fs)" "Loading package aider" elapsed) (message "%s...done" "Loading package aider")))))
  (progn (use-package-statistics-gather :init 'aider nil) (let ((now (current-time))) (message "%s..." "Loading package aider") (prog1 (if (not (require 'aider nil t)) (display-warning 'use-package (format "Cannot load %s" 'aider) :error) (use-package-statistics-gather :config 'aider nil) (let ((now (current-time))) (message "%s..." "Configuring package aider") (prog1 (condition-case err (progn ... ... t) (... ...)) (let (...) (if ... ... ...)))) (use-package-statistics-gather :config 'aider t)) (let ((elapsed (float-time (time-subtract ... now)))) (if (> elapsed 0.1) (message "%s...done (%.3fs)" "Loading package aider" elapsed) (message "%s...done" "Loading package aider"))))) (use-package-statistics-gather :init 'aider t))
  (condition-case err (progn (use-package-statistics-gather :init 'aider nil) (let ((now (current-time))) (message "%s..." "Loading package aider") (prog1 (if (not (require 'aider nil t)) (display-warning 'use-package (format "Cannot load %s" 'aider) :error) (use-package-statistics-gather :config 'aider nil) (let ((now ...)) (message "%s..." "Configuring package aider") (prog1 (condition-case err ... ...) (let ... ...))) (use-package-statistics-gather :config 'aider t)) (let ((elapsed (float-time ...))) (if (> elapsed 0.1) (message "%s...done (%.3fs)" "Loading package aider" elapsed) (message "%s...done" "Loading package aider"))))) (use-package-statistics-gather :init 'aider t)) ((debug error) (funcall use-package--warning29 :catch err)))
  load-with-code-conversion("/Users/qiang/.emacs.d/init.el" "/Users/qiang/.emacs.d/init.el" t t)
  load("/Users/qiang/.emacs.d/init" noerror nomessage)
  #f(compiled-function () #<bytecode 0x12e013f3e3665791>)()
  startup--load-user-init-file(#f(compiled-function () #<bytecode 0x427dc8057b951f3>) #f(compiled-function () #<bytecode 0x731968ef8c3769b>) t)
  command-line()
  normal-top-level()

(use-package aider
  :straight (:host github :repo "tninja/aider.el" :files ("aider.el" "aider-core.el" "aider-file.el" "aider-code-change.el" "aider-discussion.el" "aider-prompt-mode.el"))
  :ensure t
  :config
  ;; For latest claude sonnet model
  (setq aider-args '("--model" "sonnet"))
  (setenv "ANTHROPIC_API_KEY" anthropic-api-key)
  ;; Or chatgpt model
  ;; (setq aider-args '("--model" "o3-mini"))
  ;; (setenv "OPENAI_API_KEY" <your-openai-api-key>)
  ;; Or use your personal config file
  ;; (setq aider-args `("--config" ,(expand-file-name "~/.aider.conf.yml")))
  ;; ;;
  ;; Optional: Set a key binding for the transient menu
  (global-set-key (kbd "C-c a") 'aider-transient-menu))

(require 'aider)
