#!/usr/bin/env guile -s
!#
; coding: utf-8
; SPDX-License-Identifier: GPL-3.0-or-later

;;;; GNU Guile Implementation

;; Logical/boolean XOR operation:
;; - first: The 1st condition.
;; - second: The 2nd condition.
;; - rest[0]: The 3rd condition.
;; - rest[n]: The (n+3)th condition.
(define gmsle_xor
  (case-lambda
    ((first)
     (if (zero? (string-length first))
       #f
       first))
    ((first second)
     (if (zero? (string-length first))
       (if (zero? (string-length second)) #f second)
       (if (zero? (string-length second)) first #f)))
    ((first second . rest)
     (if (zero? (string-length first))
       (if (zero? (string-length second))
         #f
         (apply gmsle_xor second rest))
       (if (zero? (string-length second))
         (apply gmsle_xor first rest)
         #f)))))
