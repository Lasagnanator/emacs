(general-evil-setup)
(general-create-definer leader-keys
  :states '(normal insert visual emacs)
  :keymaps 'override
  :prefix "SPC"
  :global-prefix "M-SPC")

(general-create-definer next-keys
  :states '(normal insert visual emacs)
  :keymaps 'override
  :prefix "]"
  :global-prefix "M-]")

(general-create-definer prev-keys
  :states '(normal insert visual emacs)
  :keymaps 'override
  :prefix "["
  :global-prefix "M-[")

;; Buffer
(leader-keys
  "b" '(:ignore t :wk "Buffer")
  "b d" '(kill-this-buffer :wk "Kill this buffer")
  "b b" '(consult-buffer :wk "Open buffers list")
  "b r" '(revert-buffer :wk "Reload buffer")
  "b i" '(ibuffer :wk "Open ibuffer")
  "b s" '(basic-save-buffer :wk "Save buffer")
  "b S" '(evil-write-all :wk "Save all buffers"))
(next-keys "b" '(next-buffer :wk "Next buffer"))
(prev-keys "b" '(previous-buffer :wk "Previous buffer"))

;; Windows
(leader-keys
  "w" '(:ignore t :wk "Window")
  "w h" '(evil-window-left :wk "Move left")
  "w H" '(windmove-swap-states-left :wk "Move widow left")
  "w j" '(evil-window-down :wk "Move down")
  "w J" '(windmove-swap-states-down :wk "Move widow down")
  "w k" '(evil-window-up :wk "Move up")
  "w K" '(windmove-swap-states-up :wk "Move widow up")
  "w l" '(evil-window-right :wk "Move right")
  "w L" '(windmove-swap-states-right :wk "Move widow right")
  "w s" '(evil-window-split :wk "Split horizontally")
  "w v" '(evil-window-vsplit :wk "Split vertically")
  "w q" '(evil-quit :wk "Quit window"))

;; Files and folders
(leader-keys
  "f" '(:ignore t :wk "Files")
  "f f" '(find-file :wk "Find file")
  "f r" '(recentf :wk "Recent files")
  "f p" '((lambda ()
	    (interactive)
	    (find-file (concat user-emacs-directory "config.org")))
	  :wk "Edit config file")
  "f P" '((lambda ()
	    (interactive)
	    (find-file user-emacs-directory))
	  :wk "Open emacs config directory"))

;; Sessions
(leader-keys
  "q" '(:ignore t :wk "Session")
  "q q" '(save-buffers-kill-terminal :wk))

;; Tabs and workspaces
(leader-keys
  "TAB" '(:ignore t :wk "Tabs")
  "TAB l" '(persp-switch :wk "Choose workspace")
  "TAB n" '(persp-switch :wk "Choose workspace"))
(next-keys "TAB" '(persp-next :wk "Next workspace"))
(prev-keys "TAB" '(persp-prev :wk "Previous workspace"))

;; Open and toggle stuff
(leader-keys
  "o" '(:ignore t :wk "Open")
  "o -" '(dired-jump :wk "Open dired in cwd")
  "o e" '(treemacs :wk "Open Treemacs"))

;; Git
(leader-keys
  "g" '(:ignore t :wk "Git")
  "g g" '(magit :wk "Magit"))

;; LSP
(leader-keys
  "c" '(:ignore t :wk "Code actions")
  "c l" '(lsp :wk "Start LSP server")) ;; TODO: test LSP functionb

(leader-keys
  :keymaps 'lsp-mode-map
  "c c" '(compile :wk "Compile")
  "c C" '(recompile :wk "Recompile")
  "c d" '(lsp-find-declaration :wk "Find declaration")
  "c D" '(lsp-find-definition :wk "Find definition")
  "c f" '(lsp-format-buffer :wk "Format buffer")
  "c i" '(lsp-find-implementation :wk "Find implementation")
  "c j" '(consult-lsp-symbols :wk "Find symbol in project")
  "c o" '(lsp-organize-imports :wk "Organize imports")
  "c s" '(lsp-find-references :wk "Find references")
  "c t" '(lsp-find-type-definition :wk "Lookup type definition")
  "c r" '(lsp-rename :wk "Rename symbol"))

;; Debugger
(leader-keys
  ;; :keymaps 'dap-mode-map
  "d" '(:ignore t :wk "Debugger")
  "d b" '(dap-breakpoint-toggle :wk "Toggle breakpoint")
  "d s" '(dap-debug :wk "Start debugging")
  "d r" '(dap-debug-restart :wk "Restart session"))

;; Org mode
(leader-keys
  :keymaps 'org-mode-map
  "n" '(:ignore t :wk "Notes")
  "n '" '(org-edit-special :wk "Edit section"))

;; Help and other functions
(leader-keys
  "h" '(:ignore t :wk "H")
  "h f" '(helpful-callable :wk "Describe function")
  "h k" '(helpful-key :wk "Describe key")
  "h m" '(describe-mode :wk "Describe mode")
  "h o" '(helpful-symbol :wk "Describe symbol")
  "h q" '(help-quit :wk "Quit help loop")
  "h s" '(describe-syntax :wk "Describe syntax")
  "h t" '(consult-theme :wk "Load theme")
  "h v" '(helpful-variable :wk "Describe variable"))
