;;; The package manager config
(require 'package)
(push '("marmalade" . "http://marmalade-repo.org/packages/")
      package-archives )
(push '("melpa" . "http://melpa.milkbox.net/packages/")
      package-archives)
  (package-initialize)
(when (not package-archive-contents)
    (package-refresh-contents))

;;; The package config
(require 'evil)
  (evil-mode 1)
(require 'evil-org)
(load-theme 'gotham t)
(setq linum-format "%4d \u2502 ")
(global-linum-mode 1)
(require 'company)
  (add-to-list 'company-backends 'company-anaconda)
(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'python-mode-hook 'anaconda-mode)
(sml/setup)
(add-hook 'prog-mode-hook 'paredit-everywhere-mode)
(add-hook 'after-init-hook 'electric-pair-mode)
(add-hook 'after-init-hook #'global-flycheck-mode)
