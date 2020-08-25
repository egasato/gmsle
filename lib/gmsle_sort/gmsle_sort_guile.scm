#!/usr/bin/env guile -s
!#
; coding: utf-8
; SPDX-License-Identifier: GPL-3.0-or-later

;;;; GNU Guile Implementation

; Load the dependencies
(use-modules (ice-9 regex))
(use-modules ((rnrs) :version (6)))

; A simple macro to make global substitution a shorter statement
(define-syntax rxgsub
  (syntax-rules ()
    ((rxgsub regexp target item ...)
     (regexp-substitute/global #f regexp target item ...))))

; Compile the regular expression
(define __gmsle_sort_rx (make-regexp "[^[:space:]]+"))

;; Sorts the items of a list:
;; - 1: The list.
(define (gmsle_sort lst)
  (string-join
    (list-sort string<?
               (map match:substring
                    (list-matches __gmsle_sort_rx lst)))))
