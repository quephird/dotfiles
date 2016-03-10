(require 'cask "/usr/local/Cellar/cask/0.7.2_1/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)

(xterm-mouse-mode)
(require 'mwheel)
(mouse-wheel-mode t)
(setq mouse-wheel-scroll-amount '(1 ((shift) 1) ((control) . nil)))

(global-set-key [f8] 'neotree-toggle)
(setq-default neo-show-hidden-files t)

(add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)

(global-set-key (kbd "C-x g") 'magit-status)

(add-hook 'after-init-hook 'global-company-mode)
