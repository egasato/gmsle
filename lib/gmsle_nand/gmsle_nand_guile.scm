#!/usr/bin/env guile -s
!#
; coding: utf-8
; SPDX-License-Identifier: GPL-3.0-or-later

;;;; GNU Guile Implementation

;; Logical/boolean NAND operation:
;; - first: The 1st condition.
;; - rest[0]: The 2nd condition.
;; - rest[n]: The (n+1)th condition.
(define gmsle_nand
  (case-lambda
    ((first)
     (zero? (string-length first)))
    ((first . rest)
     (if (zero? (string-length first))
       #t
       (apply gmsle_nand rest)))))
