;; The package manager config

;;; Code:
(setq ring-bell-function 'ignore)
(require 'package)
(push '("marmalade" . "http://marmalade-repo.org/packages/")
      package-archives )
(push '("melpa" . "http://melpa.milkbox.net/packages/")
      package-archives)
  (package-initialize)
(when (not package-archive-contents)
    (package-refresh-contents))

;;; The package config
(require 'ace-jump-mode)
(require 'evil-leader)
(evil-leader/set-leader "<SPC>")
(global-evil-leader-mode)
(evil-leader/set-key
  "b" 'helm-mini
  "f" 'helm-find-files
  "x" 'helm-M-x
  "ci" 'evilnc-comment-or-uncomment-lines
  "<SPC>" 'ace-jump-mode
  )
(require 'evil)
  (evil-mode 1)
(require 'evil-org)
(require 'guide-key)
(evilnc-default-hotkeys)
(setq guide-key/guide-key-sequence t)
(guide-key-mode 1)
(add-to-list 'load-path "~/.emacs.d/lalopmak-evil/")
; (require 'lalopmak-evil)
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
(setq backup-directory-alist '(("." . "~/.saves"))) ; Put the backups in their correct place
(setq backup-by-copying t)
(menu-bar-mode -1) ; Disable menu bar
(require 'evil-surround)
(global-evil-surround-mode 1)
(setq evil-move-cursor-back nil)
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
(require 'ac-clang)
(require 'yasnippet)
(yas-global-mode 1)
(cmake-ide-setup)
(require 'evil-snipe)
(evil-snipe-mode 1)
(require 'evil-terminal-cursor-changer)
(setq evil-visual-state-cursor '("red" box)); █
(setq evil-insert-state-cursor '("green" bar)); ⎸
(setq evil-emacs-state-cursor '("blue" hbar)); _
(dolist (hook '(text-mode-hook))
  (add-hook hook (lambda () (flyspell-mode 1))))
(require 'whitespace)
(setq whitespace-line-column 80) ;; limit line length
(setq whitespace-style '(face lines-tail))
(global-whitespace-mode +1)
(require 'column-marker)
(add-hook 'global-mode-hook (lambda () (interactive) (column-marker-1 80)))
