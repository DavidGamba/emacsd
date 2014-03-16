; No welcome screen
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)

(add-to-list 'load-path user-emacs-directory)
(add-to-list 'load-path (concat user-emacs-directory "config"))
; (add-to-list 'custom-theme-load-path (concat user-emacs-directory "themes") )

; Common lisp
(require 'cl)

;; script to automatically pull packages from melpa, org, marmalade and gnu
(require 'init-packages)

; evil configuration file
(require 'init-evil)
(require 'init-keybindings)

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


(require-package 'surround)
(global-surround-mode 1)

(require-package 'solarized-theme)
(load-theme 'solarized-dark t)

; scala-mode2 recommended over scala-mode
(require-package 'scala-mode2)

; Show matching parens
(setq show-paren-delay 0)
(show-paren-mode t)
; Highlights the background of the expresion
(setq show-paren-style 'expression)
(set-face-attribute 'show-paren-match-face nil
                    :background "dark slate gray" :foreground nil)

; Autoclose parens
(electric-pair-mode +1)
