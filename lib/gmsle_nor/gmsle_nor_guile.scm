#!/usr/bin/env guile -s
!#
; coding: utf-8
; SPDX-License-Identifier: GPL-3.0-or-later

;;;; GNU Guile Implementation

;; Logical/boolean NOR operation:
;; - first: The 1st condition.
;; - rest[0]: The 2nd condition.
;; - rest[n]: The (n+1)th condition.
(define gmsle_nor
  (case-lambda
    ((first)
     (zero? (string-length first)))
    ((first . rest)
     (if (zero? (string-length first))
       (apply gmsle_nor rest)
       #f))))
