

(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  ;; company is an optional dependency. You have to
  ;; install it separately via package-install
  ;; `M-x package-install [ret] company`
  (company-mode +1))

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

;; formats the buffer before saving
(add-hook 'before-save-hook 'tide-format-before-save)

(add-hook 'typescript-mode-hook #'setup-tide-mode)

(setq tide-always-show-documentation t)
(setq tide-format-options '(:InsertSpaceAfterCommaDelimiter t
                            :InsertSpaceAfterSemicolonInForStatements t
                            :InsertSpaceBeforeAndAfterBinaryOperators t
                            :InsertSpaceAfterKeywordsInControlFlowStatements t
                            :InsertSpaceAfterFunctionKeywordForAnonymousFunctions t
                            :IndentSize 2
                            :ConvertTabsToSpaces t))

(add-hook 'js2-mode-hook #'setup-tide-mode)
;; configure javascript-tide checker to run after your default javascript checker
;;(require 'flycheck)

;;(flycheck-add-next-checker 'javascript-eslint 'javascript-tide 'append)


