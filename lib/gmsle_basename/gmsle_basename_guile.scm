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
(define (__gmsle_basename rx)
  (lambda (path)
    (rxgsub rx path 'pre 'post)))

; Compile the regular expressions
(define __gmsle_basename_rx1 (make-regexp "[^[:space:]]+"))
(define __gmsle_basename_rx2 (make-regexp "\\.[^\\/]*$"))

;; Returns the basename:
;; - paths: The paths.
(define (gmsle_basename paths)
  (string-join
    (map (compose (__gmsle_basename __gmsle_basename_rx2) match:substring)
         (list-matches __gmsle_basename_rx1 paths))))
