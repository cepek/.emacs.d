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


;; Using Octave Mode
(setq auto-mode-alist
      (cons '("\\.m$" . octave-mode) auto-mode-alist))


;; F1...F12 keys
(global-set-key '[(f4)] 'ff-find-other-file)  ; switch cpp and header files


;; Numbering ...

(setq global-display-line-numbers-mode t)
(setq column-number-mode t)


;; Themes ...

(add-hook 'after-init-hook (lambda () (load-theme 'leuven)))


(add-to-list 'load-path "~/.emacs.d/local/")
(add-hook 'cmake-mode-hook
   (lambda () (load "create-basic-cmake-cxx-project.el")))
(add-hook 'c++-mode-hook (lambda()(load "insert-include-guards.el")))

(setq global-display-line-numbers-mode t)
(setq global-display-line-numbers-mode t)

(setq inhibit-startup-screen t)
