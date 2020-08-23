#!/usr/bin/env guile -s
!#
; coding: utf-8
; SPDX-License-Identifier: GPL-3.0-or-later

;;;; GNU Guile Implementation

; Load the dependencies
(use-modules (ice-9 regex))

; Compile the regular expression
(define __gmsle_words_rx "[^[:space:]]+")

;; Returns the number of words in a text:
;; - text: The text.
(define (gmsle_words text)
  (length (list-matches __gmsle_words_rx text)))
