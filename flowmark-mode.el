;; flowmark-mode.el
;; Major mode for Flowmark.
;; (c) 2024 Zahktïn Làhm
;;
;; This file is not part of GNU Emacs.

(defvar flowmark-syntax-coloring nil)
(setq flowmark-syntax-coloring
      '(("\\\\\s*\(\(.*\)\)\s*" . font-lock-comment-face)
	("\\(\\\\\\(?:call\\|def\\(?:\.free\\)?\\)\\)\(\\(\\(?:[^,\\]\\|\\\\,\\)+\\)"
	 (1 font-lock-keyword-face)
	 (2 font-lock-function-name-face))
	("\\(\\\\\\(?:halt\\|debug\.list_names\\|init\.macro\\|copy\\|move\\|del\\(?:\.\\(?:free\\|all\\)\\)?\\|recite\.\\(?:reset\\|n?char\\|next_piece\\|to_gap\\|to_pattern\\)\\|next\.\\(?:piece\\|char\\|line\\)\\|if\\(?:eq\\|ne\\)\\(?:\.\\(?:int\\|float\\)\\)?\\)\\)"
	 (1 font-lock-keyword-face))
	("\\(\\\\[^\n(]+\\)\("
	 (1 font-lock-function-name-face))
	("<[^>]*>" . font-lock-variable-name-face)
	("\\\\\s*\n\s*"
	 (0 font-lock-comment-face))))

(define-derived-mode flowmark-mode fundamental-mode "Flowmark"
  "Major mode for Flowmark"
  (setq font-lock-defaults '((flowmark-syntax-coloring))))

(provide 'flowmark-mode)