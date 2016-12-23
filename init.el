
;; =============================================================================================
;;设置中英文字体
;; Setting English Font
(set-face-attribute
;; 'default nil :font "DejaVu Sans Mono 14")
 'default nil :font "Consolas 14")
;; Setting Chinese Font
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
            charset
 	         (font-spec :family "Microsoft Yahei" :size 14)))



;;全局显示行号
(global-linum-mode t);;

;;全局高亮选中行
(global-hl-line-mode 1)

;;设置文本格式为utf-8,完美支持中文
(set-language-environment 'utf-8)
(set-locale-environment "UTF-8")

;;设置启动时界面位置与大小
;;(set-frame-position (selected-frame) 200 100)
;;(set-frame-width (selected-frame) 110)
;;(set-frame-height (selected-frame) 40)
(setq initial-frame-alist (quote ((fullscreen .maximized))))

;;关闭工具栏
(tool-bar-mode -1)
;;关闭滚动条
(scroll-bar-mode -1)

;;关闭自动备注文件
(setq make-backup-files nil)

;;设置f2为快捷键，快速打开配置文件
(defun open-my-init-file ()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "<f2>") 'open-my-init-file)

;;设置键盘（针对mac）
(setq mac-option-modifier 'control)
(setq mac-command-modifier 'meta)


;;to use the MELPA repository
(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/") t) ;; stable版本
;;	     '("melpa" . "http://melpa.org/packages/")) ;;bleeding版本
(package-initialize)

;;自动补全
(global-company-mode t)
(setq-default company-idle-delay 0.1)
(setq-default company-minimum-prefix-length 1)


;; theme
;;(load-theme 'solarized-dark 1)
(load-theme 'monokai 1)

;;支持鼠标
(setq mouse-drag-copy-region t)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;;markdown
(custom-set-variables
 '(markdown-command "/usr/local/bin/markdown"))
;;
;;(delete-selection-mode 1)
;;(setq initial-frame-alist (quote ((fullscreen . maximized))))


;; hungry-delete


;; 

;; (ivy-mode 1)
;; (setq ivy-use-virtual-buffers t)
;; (global-set-key "\C-s" 'swiper)
;; (global-set-key (kbd "C-c C-r") 'ivy-resume)
;; (global-set-key (kbd "<f6>") 'ivy-resume)
;; (global-set-key (kbd "M-x") 'counsel-M-x)
;; (global-set-key (kbd "C-x C-f") 'counsel-find-file)
;; (global-set-key (kbd "<f1> f") 'counsel-describe-function)
;; (global-set-key (kbd "<f1> v") 'counsel-describe-variable)
;; (global-set-key (kbd "<f1> l") 'counsel-load-library)
;; ;;(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
;; ;;(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
;; (global-set-key (kbd "C-c g") 'counsel-git)
;; (global-set-key (kbd "C-c j") 'counsel-git-grep)
;; (global-set-key (kbd "C-c k") 'counsel-ag)
;; (global-set-key (kbd "C-x l") 'counsel-locate)
;; (global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
;; (define-key read-expression-map (kbd "C-r") 'counsel-expression-history)

