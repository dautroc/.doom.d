;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "Loi Nguyen"
      user-mail-address "ducloi221@gmail.com")

;; Custom setup
(add-to-list 'default-frame-alist '(inhibit-double-buffering . t))
(add-to-list 'initial-frame-alist '(fullscreen . maximized))
(modify-syntax-entry ?_ "w")
(setq-default evil-escape-key-sequence "jj")
(setq avy-all-windows t)
(setq doom-theme 'doom-one)
(setq display-line-numbers t)
(use-package evil-surround
  :ensure t
  :config
  (global-evil-surround-mode 1))

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/Dropbox/emacs/org-modes/")
(setq bookmark-file "~/Dropbox/emacs/bookmarks")
(setq projectile-known-projects-file "~/Dropbox/emacs/projectile.projects")

;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
(load! "embark")

(after! projectile
  (setq projectile-tags-file-name "ETAGS"))

