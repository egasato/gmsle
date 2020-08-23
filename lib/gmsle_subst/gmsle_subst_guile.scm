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

;; Replaces literal text:
;; - from: The text to search for.
;; - to: The text to replace with.
;; - text: The text.
(define (gmsle_subst from to text)
  (rxgsub (regexp-quote from) text 'pre to 'post))
