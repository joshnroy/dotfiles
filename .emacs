;;; The package manager config

;;; Code:
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
; Map escape to cancel (like C-g)...
(define-key isearch-mode-map [escape] 'isearch-abort)   ;; isearch
(define-key isearch-mode-map "\e" 'isearch-abort)   ;; \e seems to work better for terminals
(global-set-key [escape] 'keyboard-escape-quit)         ;; everywhere else
(require 'ido)
(require 'ido-vertical-mode)
(ido-mode 1)
(ido-vertical-mode 1)
(setq ido-vertical-define-keys 'C-n-and-C-p-only)
(setq backup-directory-alist '(("." . "~/.saves"))) ; Put the backups in their correct place
(setq backup-by-copying t)
