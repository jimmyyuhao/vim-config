(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize)

(require 'evil)
(evil-mode 1)
;; set leader key in all states
(evil-set-leader nil (kbd "C-SPC"))
;; set leader key in normal state
(evil-set-leader 'normal (kbd ","))

;; set local leader
(evil-set-leader 'normal "," t)
;;(evil-define-key 'normal 'global (kbd "<leader>tc") 'tabnew)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(helm multiple-cursors math-symbol-lists evil company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq evil-emacs-state-modes nil)
(setq evil-insert-state-modes nil)
(setq evil-motion-state-modes nil)

;;(global-set-key (kbd "C-n") 'mc/edit-lines)

(global-set-key (kbd "C-n") 'mc/mark-next-like-this)
(global-set-key (kbd "C-N") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-\ A") 'mc/mark-all-like-this)
