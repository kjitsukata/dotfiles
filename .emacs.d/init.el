;; Setting load-path
(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory
              (expand-file-name (concat user-emacs-directory path))))
        (add-to-list 'load-path default-directory)
        (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
            (normal-top-level-add-subdirs-to-load-path))))))
(add-to-load-path "elisp" "conf" "public_repos")

;; Setting frame size and frame position
(setq initial-frame-alist
	(append (list
		'(width . 150)
		'(height . 55)
		'(top . 0)
		'(left . 0)
		'(font . "Cascadia Code")
		)
		initial-frame-alist))
(setq default-frame-alist initial-frame-alist)

