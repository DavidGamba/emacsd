(evil-leader/set-leader ",")

(evil-leader/set-key
  "w" 'save-buffer
  ; evil-nerd-commenter keybindings
  "," 'evilnc-comment-or-uncomment-lines
)

; Make arrow keys scroll
(define-key evil-normal-state-map (kbd "<down>") 'evil-scroll-line-down)
(define-key evil-normal-state-map (kbd "<up>") 'evil-scroll-line-up)

; More around splits
(define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
(define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
(define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
(define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)

; Create new frames and switch between them
(evil-ex-define-cmd "fsp" 'new-frame)
(define-key evil-normal-state-map (kbd "C-S-h") 'other-frame)
(define-key evil-normal-state-map (kbd "C-S-l") 'other-frame)

(provide 'init-keybindings)
