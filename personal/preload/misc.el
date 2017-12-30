;; Changes all yes/no questions to y/n type
(fset 'yes-or-no-p 'y-or-n-p)

;; shell scripts
(setq-default sh-basic-offset 2)
(setq-default sh-indentation 2)

;; No need for ~ files when editing
(setq create-lockfiles nil)

;; Go straight to scratch buffer on startup
(setq inhibit-startup-message t)

;; Flycheck on save
(defun save-buffer-maybe-show-errors ()
  "Save buffer and show errors if any."
  (interactive)
  (save-buffer)
  (flycheck-buffer))
;; Bind it to some key:
(global-set-key (kbd "C-x C-s") 'save-buffer-maybe-show-errors)

;; Change cursor type
(setq-default cursor-type 'bar)

;; Setup multiple cursors
;(require 'multiple-cursors)
;(global-set-key (kbd "C->") 'mc/mark-next-like-this)
;(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
;(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
