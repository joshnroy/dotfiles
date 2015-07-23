;; The package manager config

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
(require 'python-mode)
;  (add-to-list 'company-backends 'company-anaconda)
(add-hook 'after-init-hook 'global-company-mode)
(with-eval-after-load 'company
  '(autoload ‘company-mode “company” nil t))
; (add-hook 'python-mode-hook 'anaconda-mode)
(sml/setup)
(add-hook 'prog-mode-hook 'paredit-everywhere-mode)
(add-hook 'after-init-hook 'electric-pair-mode)
(add-hook 'after-init-hook #'global-flycheck-mode)
; Map escape to cancel (like C-g)...
(define-key isearch-mode-map [escape] 'isearch-abort)   ;; isearch
(define-key isearch-mode-map "\e" 'isearch-abort)   ;; \e seems to work better for terminals
(global-set-key [escape] 'keyboard-escape-quit)         ;; everywhere else
require 'ido)
(require 'ido-vertical-mode)
(ido-mode 1)
(ido-vertical-mode 1)
(setq ido-vertical-define-keys 'C-n-and-C-p-only)
(setq backup-directory-alist '(("." . "~/.saves"))) ; Put the backups in their correct place
(setq backup-by-copying t)
(menu-bar-mode -1) ; Disable menu bar
(require 'evil-surround)
(global-evil-surround-mode 1)
(setq evil-move-cursor-back nil)
(unless (display-graphic-p)
  (require 'evil-terminal-cursor-changer))
(require 'powerline)
(require 'powerline-evil)
(powerline-evil-center-color-theme)
(add-hook 'after-init-hook 'global-color-identifiers-mode)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(require 'helm); helm stuff
(require 'helm-config)
(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(helm-mode 1)
(windmove-default-keybindings)
