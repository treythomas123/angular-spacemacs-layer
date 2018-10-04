;;; packages.el --- angular layer packages file for Spacemacs.
;;
;; Author: Trey Thomas <trey@treythomas.me>
;; URL: https://github.com/treythomas123/spacemacs-angular-layer
;;
;; This file is not part of GNU Emacs.
;;
;;; License: MIT

(defconst angular-packages
  '(
    ng2-mode
    ))

(defun angular/init-ng2-mode ()
  (use-package ng2-mode
    :defer t
    :commands ng2-open-counterpart ng2-open-spec
    :init
    (progn
      (spacemacs/set-leader-keys-for-major-mode 'ng2-ts-mode
        "s" 'ng2-open-spec)
      (spacemacs/set-leader-keys-for-major-mode 'ng2-ts-mode
        "c" 'ng2-open-counterpart)
      (spacemacs/set-leader-keys-for-major-mode 'ng2-html-mode
        "c" 'ng2-open-counterpart)
      )))

