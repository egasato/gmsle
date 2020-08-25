#!/usr/bin/env guile -s
!#
; coding: utf-8
; SPDX-License-Identifier: GPL-3.0-or-later

;;;; GNU Guile Implementation

; Load the dependencies
(use-modules (ice-9 regex))

; A simple macro to make global substitution a shorter statement
(define-syntax rxgsub
  (syntax-rules ()
    ((rxgsub regexp target item ...)
     (regexp-substitute/global #f regexp target item ...))))

; Returns a lambda expression that performs a trailing slash substitution
(define (__gmsle_dir1 rx)
  (lambda (path)
    (rxgsub rx path 'pre "/" 'post)))

; Returns a lambda expression that returns "./" if the regexp does not match
(define (__gmsle_dir2 rx)
  (lambda (path)
    (if (regexp-exec rx path) path "./")))

; Compile the regular expression
(define __gmsle_dir_rx1 (make-regexp "[^[:space:]]+"))
(define __gmsle_dir_rx2 (make-regexp "\\/[^\\/]*$"))
(define __gmsle_dir_rx3 (make-regexp "\\/$"))

;; Returns the directory part:
;; - 1: The paths.
(define (gmsle_dir paths)
  (string-join
    (map (compose (__gmsle_dir2 __gmsle_dir_rx3)
                  (__gmsle_dir1 __gmsle_dir_rx2)
                  match:substring)
         (list-matches __gmsle_dir_rx1 paths))))
