;;; lispyscript-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (lispyscript-mode lispyscript-mode/add-word-chars)
;;;;;;  "lispyscript-mode" "lispyscript-mode.el" (21554 17701 0 0))
;;; Generated autoloads from lispyscript-mode.el

(defvar lispyscript-font-lock-defaults `((,(rx "(" (group "macro") (one-or-more whitespace) (group (one-or-more word))) (1 font-lock-keyword-face) (2 font-lock-function-name-face)) (,(rx "(" (group (or "var" "template" "doMonad" "monad" "withMonad" "testGroup" "testRunner")) (one-or-more whitespace) (group (one-or-more word))) (1 font-lock-keyword-face) (2 font-lock-variable-name-face)) (,(rx "(" (group (or "->" "array" "arrayInit" "arrayInit2d" "object" "new" "javascript" "if" "cond" "when" "unless" "do" "function" "try" "catch" "throw" "loop" "each" "each2d" "eachKey" "reduce" "map" "for" "template-repeat" "template-repeat-key" "include" "true" "false" "assert"))) (1 font-lock-keyword-face)) (,(rx bow (group (or "true" "false"))) (1 font-lock-keyword-face)) (,(rx bow (group "~" (opt 64) (one-or-more word) (opt "..."))) (1 font-lock-type-face)) (,(rx bow (group "___" (one-or-more word))) (1 font-lock-type-face))))

(autoload 'lispyscript-mode/add-word-chars "lispyscript-mode" "\


\(fn &rest CHARS)" nil t)

(autoload 'lispyscript-mode "lispyscript-mode" "\
Major mode for LispyScript

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.ls$" . lispyscript-mode))

;;;***

;;;### (autoloads nil nil ("lispyscript-mode-pkg.el") (21554 17701
;;;;;;  553046 0))

;;;***

(provide 'lispyscript-mode-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; lispyscript-mode-autoloads.el ends here
