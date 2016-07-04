
(setq org-todo-keywords
      '((sequence "TODO(t)" "FEEDBACK" "VERIFY" "PENDING(p@)" "|" "DONE(d)" "NOTE(n)")
	(sequence "REPORT(r)" "BUG(b)" "KNOWNCAUSE(k)" "|" "FIXED(f!)")
	(sequence "|" "CANCELED(c!@)" "DELEGATED")))
(setq org-log-done 'time)
(setq org-log-done 'note)
(setq org-tag-alist '(("@work" . ?w)
		      ("@home" . ?h)
		      ("@laptop" . ?l)
		      ("read_book" . ?b)
		      ("read_Kindle" . ?k)
		      ("Life" . ?f)
		      ("Grow" . ?g)
		      ("Learn" . ?e)))

;; Set word wrap ;; 
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))


;; Set Package
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives
	     '("gnu" . "http://elpa.gnu.org/packages/"))
(package-initialize)


;; Set Load-path
;;(add-to-list 'load-path (expand-file-name "/root/.emacs.d/web-mode"))  

;; Load Web-mode
;;(require 'web-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;nyan-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;
(nyan-mode t)


;;;;;;;;;;;;;;;;;;;;;;
;; ac-html
;;;;;;;;;;;;;;;;;;;;;;
(add-hook 'html-mode-hook 'ac-html-enable)


(setq org-highest-priority ?A)
(setq org-lowest-priority  ?E)
(setq org-default-priority ?E)
(setq org-priority-faces
      '((?A . (:background "red" :foreground "white" :weight bold))
	(?B . (:background "DarkOrange" :foreground "white" :weight bold))
	(?C . (:background "yellow" :foreground "DarkGreen" :weight bold))
	(?D . (:background "DodgerBlue" :foreground "black" :weight bold))
	(?E . (:background "SkyBlue" :foreground "black" :weight bold))
	))
(setq org-todo-keyword-faces
      '(("DONE" .      (:background "black" :foreground "yellow" :weight bold))
	("PENDING" .   (:background "LightGreen" :foreground "gray" :weight bold))
	("VERIFY" .    (:background "black" :foreground "SkyBlue" :weight bold))
	("NOTE" .      (:background "black" :foreground "DarkOrange" :weight bold))
	))

(setq org-agenda-files (list "~/org/work.org"
			     "~/org/todo.org"
			     "~/org/journal.org"
			     "~/org/memo.org"
			     "~/org/notes.org"))
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-ct" 'org-resolve-clocks)
;; Set default org file to store note
;;(setq org-default-notes-file (concat org-directory "~/notes.org"))
(define-key global-map "\C-cc" 'org-capture)

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/org/todo.org" "Tasks")
	 "* TODO %?\n  %i\n  %a")
	("w" "Work" entry (file+headline "~/org/work.org" "Work:")
	 "* TODO %?\n  %i\n  %a")
	("m" "Memo" entry (file+datetree "~/org/memo.org" "Memo")
	 "* Memo %?\nEntered on %U\n %i\n Author: %n\n Tasks: %K\n")
	("n" "Notes" entry (file+datetree "~/org/notes.org" "Notes")
	 "* %^{Description}  %^g \n %? \n%n Added: %U")
	("b" "Code &Block" entry (file+datetree "~/org/block.org")
	 "* Code : %? %^{Title code} %^g  \n #+BEGIN_SRC %^{Code Type} \n %^{code} \n #+END_SRC
")))


;; Setup Capture
;;(setq org-default-notes-file (concat org-directory "~/notes.org"))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
