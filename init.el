; No welcome screen
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)

; Add evil repository path
; git clone git://gitorious.org/evil/evil.git
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)
