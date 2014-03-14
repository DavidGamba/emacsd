; No welcome screen
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)

(add-to-list 'load-path user-emacs-directory)
(add-to-list 'load-path (concat user-emacs-directory "config"))

; Common lisp
(require 'cl)

;; script to automatically pull packages from melpa, org, marmalade and gnu
(require 'init-packages)

; highlight whitespace
(require 'whitespace)
; highlight when a line goes beyond X columns
(setq-default whitespace-line-column 80)
; what to highlight
(setq-default whitespace-style '(face trailing tabs lines-tail newline empty indentation::space tab-mark ))
(global-whitespace-mode 1)

; line numbers
(global-linum-mode t)
; line number format 4 digits and | symbol
(setq linum-format "%4d \u2502 ")

; indent on newline
(global-set-key (kbd "RET") 'newline-and-indent)

(setq c-basic-offset 2)     ; indents 2 chars
(setq tab-width 2)          ; 2 char wide for TAB
(setq-default indent-tabs-mode nil) ; Force use of spaces

; Add evil repository path
; git clone git://gitorious.org/evil/evil.git
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)
