;; headers in c++-mode

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

(setq-default indent-tabs-mode nil)

;; Compilation output
(setq compilation-scroll-output t)


;; C++ completition C-M-i

(add-hook 'c++-mode-hook 'irony-mode)
;; (add-hook 'c-mode-hook 'irony-mode)
;; (add-hook 'objc-mode-hook 'irony-mode)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)


;; F1...F12 keys
(global-set-key '[(f4)] 'ff-find-other-file)  ; switch cpp and header files


;; Numbering ...

(global-display-line-numbers-mode t)
(column-number-mode t)


;; Themes ...

(add-hook 'after-init-hook (lambda () (load-theme 'leuven)))


;; C/C++/ObjC language server supporting cross references, hierarchies,
;; completion and semantic highlighting 

;(require 'ccls)
;(setq ccls-executable "/home/cepek/ccls/Release/ccls")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ede-project-directories (quote ("/home/cepek/work")))
 '(package-selected-packages (quote (company irony))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
