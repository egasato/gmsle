#!/usr/bin/env guile -s
!#
; coding: utf-8
; SPDX-License-Identifier: GPL-3.0-or-later

;;;; Guile Implementation

;; Finds a string in a text:
;; - find: The string to search for.
;; - in: The text.
(define (gmsle_findstring find in)
  (if (string-contains in find) find #f))
