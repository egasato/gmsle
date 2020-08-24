#!/usr/bin/env guile -s
!#
; coding: utf-8
; SPDX-License-Identifier: GPL-3.0-or-later

;;;; Guile Implementation

; Load the dependencies
(use-modules (ice-9 regex))

; Compile the regular expression
(define __gmsle_lastword_rx (make-regexp "[^[:space:]]+"))

;; Returns the last word of a text:
;; - text: The text.
(define (gmsle_lastword text)
  (let* ((rev (string-reverse text))
         (word (regexp-exec __gmsle_lastword_rx rev)))
    (string-reverse (match:substring word))))
