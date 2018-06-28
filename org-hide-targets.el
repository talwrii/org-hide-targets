; org-hide-targets.el --- Hide certain org targets (<<target>>)
;; URL: https://www.github.com/talwrii/org-hide-targets

;; Attribution:

;;; Taken from code provided by [Tobias](https://emacs.stackexchange.com/questions/19230/how-to-hide-targets/32292) in this answer on the [emacs stack exchange](https://emacs.stackexchange.com/questions/19230/how-to-hide-targets/32292). This code is distribued by an implied MIT license as stipulated by the [Stack Exchange contract]

;; Copyright:

;;; Copyright 2017 Tal Wrii

;;; Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

;;; The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

;;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

;;; Commentary:

;;; This is distributed under an MIT (rather than GPL) license
;;; out of reciprocity since the original code was under an (implied) MIT license
;;; Contact: I can be contacted on the project page on github


;;; Code:

(defvar org-hide-targets--keyword
  '(org-hide-targets-font-lock-search
    (0 '(face org-target invisible org-link)))
  "Font lock keyword to hide hidden targets"
  )

(defcustom org-hide-targets-re "<<[<]?hide:[[:alnum:]]+>>[>]?"
  "Regular expression that matches strings where the invisible-property is set to org-link."
  :type '(choice (const :tag "Off" nil) regexp)
  :group 'org-link)

(defun org-hide-targets-font-lock-search (limit)
  "Put invisible-property org-link on strings matching `org-hide-targets-re'. Search for such strings until LIMIT."
  (if org-hide-targets-re
      (re-search-forward org-hide-targets-re limit t)
    (goto-char limit)
    nil))

(define-minor-mode org-hide-targets-mode nil nil nil nil
  "Minor mode to hide certain targets (normally those with identifiers preceded by "
  (if org-hide-targets-mode
      (setq font-lock-keywords (cons org-hide-targets--keyword font-lock-keywords ))
    (setq font-lock-keywords (delete org-hide-targets--keyword font-lock-keywords)))
  (font-lock-fontify-buffer))

(provide 'org-hide-targets)
;;; org-hide-targets.el ends here
