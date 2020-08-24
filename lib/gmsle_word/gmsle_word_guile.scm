#!/usr/bin/env guile -s
!#
; coding: utf-8
; SPDX-License-Identifier: GPL-3.0-or-later

;;;; GNU Guile Implementation

; Load the dependencies
(use-modules (ice-9 regex))

; Compile the regular expression
(define __gmsle_word_rx1 (make-regexp "[[:digit:]]+"))
(define __gmsle_word_rx2 (make-regexp "[^[:space:]]+"))

; Returns the first number in a string, as a number
(define (__gmsle_word n)
  (let ((m (regexp-exec __gmsle_word_rx1 n)))
    (if (regexp-match? m)
      (string->number (match:substring m))
      1)))

;; Returns the nth word of a text:
;; - n: The index.
;; - text: The text.
(define (gmsle_word n text)
  (let ((i (- (__gmsle_word n) 1))
        (words (list-matches __gmsle_word_rx2 text)))
    (if (>= i (length words))
      #f
      (match:substring (list-ref words i)))))
