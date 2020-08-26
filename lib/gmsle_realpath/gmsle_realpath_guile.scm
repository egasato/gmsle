#!/usr/bin/env guile -s
!#
; coding: utf-8
; SPDX-License-Identifier: GPL-3.0-or-later

;;;; GNU Guile Implementation

; Load the dependencies
(use-modules (ice-9 regex))

; Compile the regular expression
(define __gmsle_realpath_rx (make-regexp "[^[:space:]]+"))

; Recursive readlink function
(define (__gmsle_realpath_rec path)
  (case (stat:type (stat path))
    (('symlink) (__gmsle_realpath_rec (readlink path)))
    (else (canonicalize-path path))))

;; Returns the real path:
;; - 1: The paths.
(define (gmsle_realpath paths)
  (string-join
    (map (compose __gmsle_realpath_rec match:substring)
         (list-matches __gmsle_realpath_rx paths))))
