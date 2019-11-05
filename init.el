(require 'ido)
(ido-mode t)

(add-to-list 'load-path "/usr/include/c++/4.2.1/")
(add-to-list 'load-path "~/.emacs.d/custom/")
(require 'init-packages)
(require 'init-ui)
(require 'init-helm)
(require 'init-company)
(require 'init-yasnippet)
(require 'init-elpy)
;;(require 'init-web)

(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

(use-package pdf-tools
  :ensure t
  :config
  (custom-set-variables
    '(pdf-tools-handle-upgrades nil)) ; Use brew upgrade pdf-tools instead.
  (setq pdf-info-epdfinfo-program "/usr/local/bin/epdfinfo"))
(pdf-tools-install)

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(add-to-list 'company-backends 'company-web-html)
(add-to-list 'company-backends 'company-web-jade)
(add-to-list 'company-backends 'company-web-slim)

(add-hook 'web-mode-hook (lambda ()
                          (set (make-local-variable 'company-backends) '(company-web-html))
                          (company-mode t)))

 (require 'emmet-mode)
 (add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
 (add-hook 'html-mode-hook 'emmet-mode)
 (add-hook 'css-mode-hook  'emmet-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-c-headers-path-system
   (quote
    ("/usr/include/c++/4.2.1/" "/usr/include/" "/usr/local/include/" "/usr/local/opt/llvm/include/c++/v1/" "/Library/Developer/CommandLineTools/usr/include/c++/v1/" "/Library/Developer/CommandLineTools/usr/lib/clang/9.1.0/include/")))
 '(custom-safe-themes
   (quote
    ("6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" "f0dc4ddca147f3c7b1c7397141b888562a48d9888f1595d69572db73be99a024" default)))
 '(helm-display-buffer-height 30)
 '(package-selected-packages
   (quote
    (pdf-tools doom-modeline all-the-icons org neotree emmet-mode company-web web-mode flymake sr-speedbar yasnippet-snippets company-irony company-c-headers use-package rtags python-x python-mode magit jedi helm elpy doom-themes auctex anki-editor anaconda-mode))))

(delete-file "~/Library/Colors/Emacs.clr")
 
 
 
 
;;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
