#!/usr/bin/env guile -s
!#
; coding: utf-8
; SPDX-License-Identifier: GPL-3.0-or-later

;;;; GNU Guile Implementation

; Load the dependencies
(use-modules (ice-9 regex))

; Compile the regular expression
(define __gmsle_abspath_rx (make-regexp "[^[:space:]]+"))

;; Returns the absolute path:
;; - 1: The paths.
(define (gmsle_abspath paths)
        (string-join (map (compose canonicalize-path match:substring)
                          (list-matches __gmsle_abspath_rx paths))
                     " "))
