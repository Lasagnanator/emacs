(use-package evil
  :init			; tweak evil's configuration before loading it
  (setq evil-want-integration t) ; This is optional since it's already set to t by default.
  (setq evil-want-keybinding nil)
  (setq evil-undo-system 'undo-redo)
  (setq evil-vsplit-window-right t)
  (setq evil-split-window-below t)
  (setq evil-want-C-u-scroll t)
  :config
  (evil-mode))
(use-package evil-collection
  :after evil
  :config
					; (setq evil-collection-mode-list '(dashboard dired ibuffer magit)) ; if I want to set evil binds for only some modes
  (evil-collection-init))
(use-package evil-tutor)
