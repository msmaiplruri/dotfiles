;http://www.clear-code.com/blog/2012/3/20.html
(add-to-list 'load-path "~/.emacs.d/site-lisp/color-theme-6.6.0")

(set-language-environment "Japanese")

; color theme
(require 'color-theme)
(color-theme-initialize)
(color-theme-dark-laptop)
; スタートアップ画面非表示
(setq inhibit-startup-message t)
(setq initial-scratch-message t)
; メニューバー非表示
(menu-bar-mode 0)
; 1行ずつスクロール
(setq scroll-step 1)
; バックアップファイル
(setq backup-directory-alist
      (cons (cons "\\.*$" (expand-file-name "~/.emacs.d/auto-save-list"))
            backup-directory-alist))
(setq auto-save-file-name-transforms
      `((".*" ,(expand-file-name "~/.emacs.d/auto-save-list/") t)))
; 行番号表示
(require 'linum)
(global-linum-mode t)
(setq linum-format "%4d ")
; タブ幅
(setq-default tab-width 4)
; タブの代わりにスペースを使う
(setq-default indent-tabs-mode nil)
(setq indent-tabs-mode nil)
; Marmalade
(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)
; auto spell check
(setq-default flyspell-mode t)
(setq ispell-dictionary "american")
; bell ignore
(setq ring-bell-function 'ignore)
; encode
(prefer-coding-system 'utf-8)
(setq coding-system-for-read 'utf-8)
(setq coding-system-for-write'utf-8)
; mode
; c-mode
(add-hook 'c-mode-common-hook
          '(lambda ()
             (setq c-basic-offset 4)
             (setq tab-width 4)
             (local-set-key (kbd "RET") 'reindent-then-newline-and-indent)))
; less-css-mode
(add-hook 'less-css-common-hook
          '(lambda *(
             (setq less-css-offset 2)
             (setq tab-width 2))))
