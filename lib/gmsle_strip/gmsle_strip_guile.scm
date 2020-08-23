#!/usr/bin/env guile -s
!#
; coding: utf-8
; SPDX-License-Identifier: GPL-3.0-or-later

;;;; GNU Guile Implementation

;; Strips any leading and trailing whitespace:
;; - text: The text to strip.
(define (gmsle_strip text)
  (string-trim-both text))
