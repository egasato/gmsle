#!/usr/bin/env guile -s
!#
; coding: utf-8
; SPDX-License-Identifier: GPL-3.0-or-later

;;;; GNU Guile Implementation

; Load the dependencies
(use-modules (ice-9 regex))

; Compile the regular expression
(define __gmsle_wordlist_rx1 (make-regexp "[[:digit:]]+"))
(define __gmsle_wordlist_rx2 (make-regexp "[^[:space:]]+"))

; Returns the first number in a string, as a number
(define (__gmsle_wordlist n)
  (let ((m (regexp-exec __gmsle_wordlist_rx1 n)))
    (if (regexp-match? m)
      (string->number (match:substring m))
      1)))

;; Returns an inclusive slice of a list of words:
;; - s: The start index.
;; - e: The end index (inclusive).
;; - text: The list.
(define (gmsle_wordlist s e text)
  (let* ((first (__gmsle_wordlist s))
         (last (__gmsle_wordlist e))
         (words (list-matches __gmsle_wordlist_rx2 text))
         (len (length words)))
    (if (> first len)
      #f
      (let ((start (list-ref words (1- first)))
            (end (list-ref words (1- (max last len)))))
        (substring/read-only text
                             (match:start start)
                             (match:end end))))))
