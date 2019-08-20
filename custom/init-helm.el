(require 'helm)
(require 'helm-config)

;;; Enable Modes (helm-mode is loading nearly everything).
;;
(use-package helm-mode
  :config (helm-mode 1))

(setq helm-split-window-in-side-p t)
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)

(global-set-key (kbd "M-x") 'helm-M-x)
(setq helm-M-x-fuzzy-match t)

(global-set-key (kbd "C-x C-f") 'helm-find-files)

(global-set-key (kbd "C-x b") 'helm-mini)
(setq helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match    t)

(global-set-key (kbd "C-s") 'helm-occur-from-isearch)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)

(global-set-key (kbd "C-c h g") 'helm-google-suggest)

;; Customize colours
(set-face-attribute 'helm-header
		    nil
		    :background "red"
		    :foreground "white"
		    :height 1.3
		    :bold 2)
(set-face-attribute 'helm-source-header
		    nil
		    :background "color-28"
		    :foreground "white"
		    :height 1.3)

(provide 'init-helm)
