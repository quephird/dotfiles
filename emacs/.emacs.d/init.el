(require 'cask "/usr/local/Cellar/cask/0.7.2_1/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)

(xterm-mouse-mode)
(require 'mwheel)
(mouse-wheel-mode t)
(setq mouse-wheel-scroll-amount '(1 ((shift) 1) ((control) . nil)))

(global-set-key [f8] 'neotree-toggle)

(add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)
