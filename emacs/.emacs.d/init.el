(require 'cask "/usr/local/Cellar/cask/0.7.4/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)

(xterm-mouse-mode)
(require 'mwheel)
(mouse-wheel-mode t)
(setq mouse-wheel-scroll-amount '(1 ((shift) 1) ((control) . nil)))

(require 'darcula-theme)

(require 'ruby-mode)

(require 'clojure-mode)
(progn
  (put-clojure-indent 'fact 'defun)
  (put-clojure-indent 'facts 'defun)
  (put-clojure-indent 'future-fact 'defun)
  (put-clojure-indent 'future-facts 'defun))

(defun copy-from-osx ()
  (shell-command-to-string "pbpaste"))

(defun paste-to-osx (text &optional push)
  (let ((process-connection-type nil))
    (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
      (process-send-string proc text)
      (process-send-eof proc))))

(setq interprogram-cut-function 'paste-to-osx)
(setq interprogram-paste-function 'copy-from-osx)
(windmove-default-keybindings)

(global-linum-mode)

(global-set-key [f8] 'neotree-toggle)
(setq-default neo-show-hidden-files t)
(neotree-show)

(add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)

(global-set-key (kbd "C-x g") 'magit-status)

(add-hook 'after-init-hook 'global-company-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(neo-dir-link-face ((t (:foreground "yellow"))))
 '(neo-file-link-face ((t (:foreground "white"))))
 '(neo-root-dir-face ((t (:foreground "brightmagenta")))))
