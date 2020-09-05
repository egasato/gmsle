#!/usr/bin/env guile -s
!#
; coding: utf-8
; SPDX-License-Identifier: GPL-3.0-or-later

;;;; GNU Guile Implementation

; Load the dependencies
(use-modules (ice-9 regex))
(use-modules (rnrs lists))

; A function that performs a fail-fast comparison of two lists
(define (__gmsle_semver prev ver1 ver2)
  (if (zero? prev)
      (cond ((> ver1 ver2) 1)
            ((< ver1 ver2) -1)
            (#t 0))
      prev))

; Create a custom character set
(define __gmsle_semver_cs (char-set-adjoin char-set:whitespace #\.))

; Compile the regular expression
(define __gmsle_semver_rx (make-regexp "[[:digit:]]+"))

;; Returns the comparison of two semantic version numbers:
;; - ver1: The 1st version number.
;; - cmp:  The comparison to perform.
;; - ver2: The 2nd version number.
(define (gmsle_semver ver1 cmp ver2)
  (let* ((cmp  (string-trim-both cmp))
         (ver1 (string-trim-both ver1 __gmsle_semver_cs))
         (ver2 (string-trim-both ver2 __gmsle_semver_cs))
         (ver1 (list-matches __gmsle_semver_rx ver1))
         (ver2 (list-matches __gmsle_semver_rx ver2))
         (ver1 (map (compose string->number match:substring) ver1))
         (ver2 (map (compose string->number match:substring) ver2))
         (len1 (length ver1))
         (len2 (length ver2))
         (res #nil))
    (if (<= len1 len2)
      (append! ver1 (make-list (- len2 len1) 0))
      (append! ver2 (make-list (- len1 len2) 0)))
    (set! res (fold-left __gmsle_semver 0 ver1 ver2))
    (cond ((string=? cmp ">")  (positive? res))
          ((string=? cmp ">=") (not (negative? res)))
          ((string=? cmp "<")  (negative? res))
          ((string=? cmp "<=") (not (positive? res)))
          ((string=? cmp "==") (zero? res))
          ((string=? cmp "!=") (not (zero? res))))))
