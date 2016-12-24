(global-linum-mode t)
(global-hl-line-mode 1)

(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(package-initialize)

(global-company-mode t)
(setq-default company-idle-delay 0.1)
(setq-default company-minimum-prefix-length 1)
