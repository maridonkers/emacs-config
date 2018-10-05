;;; init.el --- Configuration of Emacs
;;

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'org)
(require 'ob-tangle)

(setq init-dir (file-name-directory (or load-file-name (buffer-file-name))))
(org-babel-load-file (expand-file-name "loader.org" init-dir))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(browse-url-chromium-program "google-chrome-stable")
 '(company-idle-delay 0.25)
 '(custom-safe-themes
   (quote
    ("d6922c974e8a78378eacb01414183ce32bc8dbf2de78aabcc6ad8172547cb074" "551596f9165514c617c99ad6ce13196d6e7caa7035cea92a0e143dbe7b28be0e" default)))
 '(highlight-symbol-idle-delay 0.5)
 '(package-selected-packages
   (quote
    (scss-mode company-web geiser julia-mode rust-mode edit-indirect which-key web-mode use-package undo-tree try smartparens sayid restclient rainbow-delimiters point-undo origami notmuch multiple-cursors move-dup markdown-mode magit hydra htmlize hl-sexp highlight-symbol highlight-parentheses goto-last-change expand-region emmet-mode cyberpunk-theme counsel-projectile company-php clojure-snippets bm auctex ag)))
 '(safe-local-variable-values
   (quote
    ((cider-cljs-lein-repl . "(do (dev) (go) (cljs-repl))")
     (cider-refresh-after-fn . "reloaded.repl/resume")
     (cider-refresh-before-fn . "reloaded.repl/suspend"))))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(magit-diff-added ((t (:background "PaleGreen4" :foreground "white smoke"))))
 '(magit-diff-removed ((t (:background "DarkOrange4" :foreground "white smoke")))))
