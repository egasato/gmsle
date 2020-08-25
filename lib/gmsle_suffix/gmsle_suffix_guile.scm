#!/usr/bin/env guile -s
!#
; coding: utf-8
; SPDX-License-Identifier: GPL-3.0-or-later

;;;; GNU Guile Implementation

; Load the dependencies
(use-modules (ice-9 regex))

; Compile the regular expression
(define __gmsle_suffix_rx1 (make-regexp "[^[:space:]]*(\\.[^[:space:]]+)"))
(define __gmsle_suffix_rx2 (make-regexp "[[:space:]]*[^[:space:]\\.][^[:space:]]+"))

; A simple macro to make global substitution a shorter statement
(define-syntax rxgsub
  (syntax-rules ()
    ((rxgsub regexp target item ...)
     (regexp-substitute/global #f regexp target item ...))))

;; Returns the suffix:
;; - paths: The paths.
(define (gmsle_suffix paths)
  (string-trim-both
    (rxgsub __gmsle_suffix_rx2
            (rxgsub __gmsle_suffix_rx1 paths 'pre 1 'post)
            'pre 'post)))
