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
(require 'evil-leader)
(evil-leader/set-leader "<SPC>")
(global-evil-leader-mode)
(evil-leader/set-key
  "b" 'helm-mini
  "f" 'helm-find-files
  )
(require 'evil)
  (evil-mode 1)
(require 'evil-org)
(require 'guide-key)
(setq guide-key/guide-key-sequence t)
(load-theme 'gotham t)
(setq linum-format "%4d \u2502 ")
(global-linum-mode 1)
(require 'python-mode)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)
(sml/setup)
(require 'smartparens-config)
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
(menu-bar-mode -1) ; Disable menu bar
(require 'evil-surround)
(global-evil-surround-mode 1)
(setq evil-move-cursor-back nil)
(unless (display-graphic-p)
  (require 'evil-terminal-cursor-changer))
(setq evil-normal-state-modes (append evil-emacs-state-modes evil-normal-state-modes))
(setq evil-emacs-state-modes nil)
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
(global-set-key (kbd "C-x b") 'helm-mini)
(helm-mode 1)
(helm-autoresize-mode 1)
;;; Windmove keybindings
(global-set-key (kbd "M-h") 'windmove-left)
(global-set-key (kbd "M-j") 'windmove-down)
(global-set-key (kbd "M-k") 'windmove-up)
(global-set-key (kbd "M-l") 'windmove-right)
(setq backup-directory-alist
      `((".*" . ,"~/.saves/auto")))
(setq auto-save-file-name-transforms
      `((".*" ,"~/.saves/auto" t)))
(require 'py-autopep8)
(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(package-initialize)
(setq web-mode-enable-auto-pairing t)
(ac-config-default)
(setq desktop-save-mode 1)
