;; To insert tab: CRTL Q Tab


;; Use CUA mode, turn off if needed from Options menu.

;;; (cua-mode t)


;; Show trailing whitespaces and delete before save

(add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq-default show-trailing-whitespace t)


(defun endless/c-hook ()
  (setq indent-tabs-mode nil))
(add-hook 'c++-mode-hook #'endless/c-hook)


;; Headers in c++-mode

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))


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
