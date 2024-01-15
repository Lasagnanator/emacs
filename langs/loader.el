;; (when (cdr (assoc 'python configured-languages)) (load (concat lang-dir "python")))
(when (cdr (assoc 'rust configured-languages)) (load (concat lang-dir "rust")))
(when (cdr (assoc 'go configured-languages)) (load (concat lang-dir "go")))
(when (cdr (assoc 'toml configured-languages)) (load (concat lang-dir "toml")))
