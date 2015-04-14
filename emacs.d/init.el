;; markdown major mode
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-hook 'markdown-mode-hook
	  (lambda ()
	    (electric-indent-local-mode -1)))

;; .scss files need to use css major mode
(add-to-list 'auto-mode-alist '("\\.css.scss\\'" . css-mode))
(setq css-indent-offset 2)

;; html templates major mode
(autoload 'web-mode "web-mode"
  "Major mode for editing HTML templates" t)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

;; my customizations for web mode
(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 2)
(setq web-mode-attr-indent-offset 2)

;; for my installed elisp files
(add-to-list 'load-path "~/.emacs.d/elisp/")

(setq inhibit-startup-message t)

;; line and column numbers
(global-linum-mode t)
(setq column-number-mode t)

;; my comment commands
(global-set-key (kbd "C-c c") 'comment-region)
(global-set-key (kbd "C-c u") 'uncomment-region)

;; make my autosaves & backups not clutter up my filesystem
(setq auto-save-directory (expand-file-name "~/.emacs.d/autosaves"))
(require 'auto-save)
(setq backup-directory-alist `(("." . "~/.emacs.d/backups")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (deeper-blue)))
 '(js-indent-level 2))

;; pretty font
(set-default-font "Inconsolata-16")

;; git version control
(require 'git)
