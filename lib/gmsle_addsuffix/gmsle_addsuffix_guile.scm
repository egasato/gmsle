#!/usr/bin/env guile -s
!#
; coding: utf-8
; SPDX-License-Identifier: GPL-3.0-or-later

;;;; GNU Guile Implementation

; Load the dependencies
(use-modules (ice-9 regex))

; Compile the regular expression
(define __gmsle_addsuffix_rx (make-regexp "[^[:space:]]+"))

; Returns a lambda expression that appends a string
(define (__gmsle_addsuffix suffix)
  (lambda (name)
    (string-append name suffix)))

;; Prepends a suffix to the front of each individual name:
;; - suffix: The suffix.
;; - names: The names.
(define (gmsle_addsuffix suffix names)
  (string-join
    (map (compose (__gmsle_addsuffix suffix) match:substring)
         (list-matches __gmsle_addsuffix_rx names))))
