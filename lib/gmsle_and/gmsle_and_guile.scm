#!/usr/bin/env guile -s
!#
; coding: utf-8
; SPDX-License-Identifier: GPL-3.0-or-later

;;;; GNU Guile Implementation

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;                                WARNING                                 ;;;
;;;------------------------------------------------------------------------;;;
;;; This implementation does not work exactly the same as the built-in     ;;;
;;; 'and' function provided by GNU Make, because the evaluation of the     ;;;
;;; parameters is done prior to the execution, that is, when the 'call'    ;;;
;;; function is being invoked.                                             ;;;
;;;                                                                        ;;;
;;; This means that it is not recommended to use this function with        ;;;
;;; consequents or alternates that have side effects, unless you are 100%  ;;;
;;; sure that the side-effects of both the consequent and the alternate    ;;;
;;; can co-exist (which usually makes no sense) or that your 'make'        ;;;
;;; implementation supports the built-in 'and' function.                   ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Logical/boolean AND operation:
;; - first: The 1st condition.
;; - rest[0]: The 2nd condition.
;; - rest[n]: The (n+1)th condition.
(define gmsle_and
  (case-lambda
    ((first)
     (if (zero? (string-length first))
       #f
       first))
    ((first . rest)
     (if (zero? (string-length first))
       #f
       (apply gmsle_and rest)))))
