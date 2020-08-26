#!/usr/bin/env guile -s
!#
; coding: utf-8
; SPDX-License-Identifier: GPL-3.0-or-later

;;;; GNU Guile Implementation

; Load the dependencies
(use-modules (ice-9 regex))

; Compile the regular expression
(define __gmsle_join_rx (make-regexp "[^[:space:]]+"))

;; Merges two lists word by word:
;; - lst1: The 1st list.
;; - lst2: The 2nd list.
(define (gmsle_join lst1 lst2)
  (let* ((words1 (list-matches __gmsle_join_rx lst1))
         (words2 (list-matches __gmsle_join_rx lst2))
         (words1 (map match:substring words1))
         (words2 (map match:substring words2))
         (len1 (length words1))
         (len2 (length words2)))
    (if (<= len1 len2)
      (append! words1 (make-list (- len2 len1) ""))
      (append! words2 (make-list (- len1 len2) "")))
    (map string-append words1 words2)))
