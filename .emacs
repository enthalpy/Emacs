(add-to-list 'load-path "~/.emacs.d/site-lisp/")

(autoload 'markdown-mode "markdown-mode.el" "Major mode for editing Markdown files" t) 
(setq auto-mode-alist (cons '("\\.text" . markdown-mode) auto-mode-alist))

(setq tab-width 8)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(display-battery-mode t)
 '(display-time-mode t)
 '(markdown-command "Markdown.pl")
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

(ido-mode t)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)

(setq-default indent-tabs-mode nil)

(require 'linum)
(global-linum-mode 1)

(require 'indent-file)
(add-hook 'emacs-lisp-mode-hook 'indent-file-when-save)
(add-hook 'emacs-lisp-mode-hook 'indent-file-when-visit)