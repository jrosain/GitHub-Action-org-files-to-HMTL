(require 'package)
(setq package-check-signature nil)
(setq package-archives
      '(("gnu" . "https://elpa.gnu.org/packages/")
        ("gnu-devel" . "https://elpa.gnu.org/devel/")
        ("nongnu" . "https://elpa.nongnu.org/nongnu/")
        ("melpa" . "https://melpa.org/packages/")))
(package-initialize)
(package-refresh-contents)

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)

(setq use-package-always-ensure t)

(setf custom-safe-themes t)

;; Load your modes here

(use-package htmlize)

(find-file (car argv))
(org-html-export-to-html)
(kill-emacs)
