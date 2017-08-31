
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#ad7fa8" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes (quote (tango-dark)))
 '(custom-safe-themes (quote ("790e74b900c074ac8f64fa0b610ad05bcfece9be44e8f5340d2d94c1e47538de" "737d9d0e0f6c4279e80f7479ec5138af6e4908a2d052126f254e1e6d1a0d0188" default)))
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;#le erase-is-backspace est different en mode graphique ou en terminal
(if (display-graphic-p)
    (progn
    ;; if graphic
      (normal-erase-is-backspace-mode 1)
    ;; else (optional)      
      (normal-erase-is-backspace-mode 1)))
      
;;bookmarks
(setq bookmark-save-flag 1) ; everytime bookmark is changed, automatically save it

;(setq bookmark-save-flag t) ; save bookmark when emacs quits 


(global-set-key (kbd "<C-up>") 'shrink-window)
(global-set-key (kbd "<C-down>") 'enlarge-window)
(global-set-key (kbd "<C-left>") 'shrink-window-horizontally)
(global-set-key (kbd "<C-right>") 'enlarge-window-horizontally)

;; setup files ending in “.js” to open in js2-mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.puml\\'" . plantuml-mode))



;;transparent

(set-frame-parameter (selected-frame) 'alpha '(85 . 50))
(add-to-list 'default-frame-alist '(alpha . (85 . 50)))

 (defun toggle-transparency ()
   (interactive)
   (let ((alpha (frame-parameter nil 'alpha)))
     (set-frame-parameter
      nil 'alpha
      (if (eql (cond ((numberp alpha) alpha)
                     ((numberp (cdr alpha)) (cdr alpha))
                     ;; Also handle undocumented (<active> <inactive>) form.
                     ((numberp (cadr alpha)) (cadr alpha)))
               100)
          '(85 . 50) '(100 . 100)))))
 (global-set-key (kbd "C-c t") 'toggle-transparency)

 ;; Set transparency of emacs
; (defun transparency (value)
;   "Sets the transparency of the frame window. 0=transparent/100=opaque"
;   (interactive "nTransparency Value 0 - 100 opaque:")
;   (set-frame-parameter (selected-frame) 'alpha value))

(set-frame-parameter (selected-frame) 'alpha '(85 50))

;(custom-set-faces
;     '(default ((t (:stipple nil :background ((image :type jpeg :file "/home/usso/Téléchargements/wallpaper-naruto.jpg") :origin display) :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 101 :width normal :family "misc-fixed")))))


;default font
;DejaVu Sans Mono:pixelsize=15:foundry=PfEd:weight=normal:slant=normal:width=normal:spacing=100:scalable=true
;M-x describe-char					

(add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-10"))



