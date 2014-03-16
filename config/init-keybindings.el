(evil-leader/set-leader ",")

(evil-leader/set-key
  "w" 'save-buffer
  ; evil-nerd-commenter keybindings
  "," 'evilnc-comment-or-uncomment-lines
)

(provide 'init-keybindings)
