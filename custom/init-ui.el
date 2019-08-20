;;***************************************
;; SETUP - UI
;;***************************************

;; Show line numbers
(global-linum-mode t)

;; Setup default directory
(setq default-directory "~/Documents/")

;;Disable splash screen and startup message
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

;; Remove scroll-bar, tool-bar and menu-bar
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

;; Set window to be maximized
(add-to-list 'initial-frame-alist '(fullscreen . maximized))
(add-to-list 'default-frame-alist '(fullscreen . fullheight))

(set-face-attribute 'default (selected-frame) :height 160)

;; Alt-3 gives the hash symbol rather than the metakey-3
(global-set-key (kbd "M-3") '(lambda () (interactive) (insert "#")))

;; Set up DOOM theme
(use-package doom-themes
  :ensure t
  :config
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
	doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-one t)
)

(use-package doom-modeline
      :ensure t
      :hook (after-init . doom-modeline-mode))

(use-package all-the-icons)

(provide 'init-ui)
