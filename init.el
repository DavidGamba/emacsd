; No welcome screen
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)

; line numbers
(global-linum-mode t)
; line number format 4 digits and | symbol
(setq linum-format "%4d \u2502 ")

; Add evil repository path
; git clone git://gitorious.org/evil/evil.git
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)
