(use-package go-mode)
(if (executable-find "gopls")
    (add-hook 'go-mode-hook 'lsp)
  (message "Go LSP (gopls) is missing, please install it."))
;; (if (executable-find "dlv")
;;     (require 'dap-dlv-go)
;;   (message "Go debugger (delve) is missing, please install it."))