; No welcome screen
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)

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

; Add evil repository path
; git clone git://gitorious.org/evil/evil.git
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)
