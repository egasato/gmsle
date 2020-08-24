#!/usr/bin/env guile -s
!#
; coding: utf-8
; SPDX-License-Identifier: GPL-3.0-or-later

;;;; Guile Implementation

; Load the dependencies
(use-modules (ice-9 regex))

; Compile the regular expression
(define __gmsle_firstword_rx (make-regexp "[^[:space:]]+"))

;; Returns the first word of a text:
;; - text: The text.
(define (gmsle_firstword text)
  (match:substring (regexp-exec __gmsle_firstword_rx text)))
