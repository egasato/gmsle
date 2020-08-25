#!/usr/bin/env guile -s
!#
; coding: utf-8
; SPDX-License-Identifier: GPL-3.0-or-later

;;;; GNU Guile Implementation

; Load the dependencies
(use-modules (ice-9 regex))

; Compile the regular expression
(define __gmsle_addprefix_rx (make-regexp "[^[:space:]]+"))

; Returns a lambda expression that prepends a string
(define (__gmsle_addprefix prefix)
  (lambda (name)
    (string-append prefix name)))

;; Prepends a prefix to the front of each individual name:
;; - prefix: The prefix.
;; - names: The names.
(define (gmsle_addprefix prefix names)
  (string-join
    (map (compose (__gmsle_addprefix prefix) match:substring)
         (list-matches __gmsle_addprefix_rx names))))
