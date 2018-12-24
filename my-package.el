;;; my-package.el --- My personal function and test

;; Copyright (C) 2010-2018 Jinpei Su

;; Author: Jinpei Su <873118042@qq.com>
;; Maintainer: anyone
;; Created: 24 Dec 2018
;; Keywords: languages
;; Homepage:

;; This file is not part of GNU Emacs.


;; =============================
;; Function definition
;; =============================


(defun insert-hello()
  (interactive)
  (insert "hello,world"))

(defun open-new-line-forward ()
  (interactive)
  (end-of-line)
  (insert "\n"))

(defun open-new-line-backward ()
  (interactive)
  (beginning-of-line)
  (insert "\n")
  (forward-line -1))

(defun delete-current-line ()
  (interactive)
  (save-excursion
    (beginning-of-line)
    (kill-line 1)))

;; ============================
;; Key Binding
;; ============================
(global-set-key (kbd "C-c d") 'delete-current-line)
(global-set-key (kbd "C-c o") 'open-new-line-forward)
(global-set-key (kbd "C-c O") 'open-new-line-backward)
