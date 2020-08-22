#!/usr/bin/env guile -s
!#
; coding: utf-8
; SPDX-License-Identifier: GPL-3.0-or-later

;;;; GNU Guile Implementation

;; Logical/boolean NOT operation:
;; - pred: The predicate.
(define (gmsle_not pred)
  (zero? (string-length pred)))
