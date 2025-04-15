(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)

(add-hook 'emacs-startup-hook #'fix-scratch)
(load "~/.emacs.d/scratches/scratch5.el")

(setq custom-file (concat user-emacs-directory "custom.el"))
(when (file-exists-p custom-file)
  (load custom-file))

(add-hook 'window-setup-hook 'toggle-frame-maximized t)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(menu-bar--display-line-numbers-mode-relative)

(ido-mode 1)
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(show-paren-mode 1)
(delete-selection-mode 1)

(setq ring-bell-function 'ignore)
(setq inhibit-startup-screen t)
(setq make-backup-files nil)
(setq auto-save-default nil)
(put 'dired-find-alternate-file 'disabled nil)
(setq dired-listing-switches "-alhv  --group-directories-first")

(load-theme 'gruber-darker t)

(require 'smex)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(require 'eglot)
(setq eglot-autoshutdown 1)

(require 'company)
(global-company-mode)

(require 'markdown-mode)
(require 'markdown-preview-mode)

(when (display-graphic-p)
  (require 'all-the-icons))

(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(setq neo-smart-open t)
(setq neo-theme (if (display-graphic-p) 'ascii))

(projectile-mode t)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(require 'web-mode)

(require 'php-mode)
(require 'company-php)
(add-hook 'php-mode-hook
          '(lambda ()
             (ac-php-core-eldoc-setup)

             (set (make-local-variable 'company-backends)
                  '((company-ac-php-backend company-dabbrev-code)
                    company-capf company-files))

             ;; Jump to definition (optional)
             (define-key php-mode-map (kbd "M-]")
               'ac-php-find-symbol-at-point)

             ;; Return back (optional)
             (define-key php-mode-map (kbd "M-[")
               'ac-php-location-stack-back)))
