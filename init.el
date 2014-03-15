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

; highlight matching parens
(require-package 'mic-paren)
(paren-activate)

; Add evil repository path
; git clone git://gitorious.org/evil/evil.git
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)

;; esc quits
(defun minibuffer-keyboard-quit ()
  "Abort recursive edit.
In Delete Selection mode, if the mark is active, just deactivate it;
then it takes a second \\[keyboard-quit] to abort the minibuffer."
  (interactive)
  (if (and delete-selection-mode transient-mark-mode mark-active)
      (setq deactivate-mark t)
    (when (get-buffer "*Completions*") (delete-windows-on "*Completions*"))
    (abort-recursive-edit)))
(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)
(global-set-key [escape] 'evil-exit-emacs-state)
