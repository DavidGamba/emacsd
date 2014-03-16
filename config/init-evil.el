; Add evil repository path
; git clone git://gitorious.org/evil/evil.git
(add-to-list 'load-path "~/.emacs.d/git/evil")
; (require-package 'evil)

; git clone https://github.com/cofi/evil-leader.git
(add-to-list 'load-path "~/.emacs.d/git/evil-leader")
; (require-package 'evil-leader)

(require-package 'evil-nerd-commenter)
(require-package 'evil-matchit)

(require 'evil)
(require 'evil-leader)
(require 'evil-nerd-commenter)

; evil-leader config
; enable before evil mode
(global-evil-leader-mode)

(evil-mode t)

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

(provide 'init-evil)
