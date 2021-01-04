(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'gruvbox t)

(require 'web-mode)

(require 'auto-complete-config)
(ac-config-default)
(add-to-list 'auto-mode-alist 'ac-modes '("\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist 'ac-modes '("\\.phtml\\'". web-mode))
(setq web-mode-engines-alist
  '(("php"    . "\\.phtml\\'")
    ("blade"  . "\\.blade\\."))
)

(setq-default indent-tabs-mode nil)
(setq web-mode-code-indent-offset 2)
(setq web-mode-indent-style 2)

(defun configlayer/init-xclip ()
  (use-package xclip
    :defer t
    :init
    (defun copy-to-clipboard ()
      "Copies selection to x-clipboard."
      (interactive)
      (if (display-graphic-p)
        (progn
          (message "Yanked region to x-clipboard!")
          (call-interactively 'clipboard-kill-ring-save)
        )
        (if (region-active-p)
            (progn
            (shell-command-on-region (region-beginning) (region-end) "xsel -i -b")
            (message "Yanked region to clipboard!")
            (deactivate-mark))
      (message "No region active; can't yank to clipboard!"))) ;
      )

    (defun paste-from-clipboard ()
      "Pastes from x-clipboard."
      (interactive)
      (if (display-graphic-p)
          (progn
            (clipboard-yank)
            (message "graphics active")
            )
        (insert (shell-command-to-string "xsel -o -b"))
      )
    )
  )
)

(add-to-list 'load-path "~/emacs.d/emmet-mode")
(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.


(when (file-exists-p "~/.emacs-configs/.hooks.el")
  (load-file "~/.emacs-configs/hooks.el") ;
  )
