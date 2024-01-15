(((use-package rustic)
  ;; Check if rust-analyzer is installed, if not check for the installer.
  ;; If it is start LSP
  ;; Then check how the debugger works
  (if (executable-find "rust-analyzer")
      (add-hook 'rust-mode-hook 'lsp)
    (message "Rust LSP (rust-analyzer) is missing, please install it"))
  (use-package rust-playground)))
