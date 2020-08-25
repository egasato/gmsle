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

; Returns a lambda expression that performs an empty substitution
(define (__gmsle_notdir rx)
  (lambda (path)
    (rxgsub rx path 'pre 'post)))

; Compile the regular expression
(define __gmsle_notdir_rx1 (make-regexp "[^[:space:]]+"))
(define __gmsle_notdir_rx2 (make-regexp "[^[:space:]]+/"))

;; Returns the non-directory part:
;; - 1: The paths.
(define (gmsle_notdir paths)
  (string-join
    (map (compose (__gmsle_notdir __gmsle_notdir_rx2) match:substring)
         (list-matches __gmsle_notdir_rx1 paths))))
