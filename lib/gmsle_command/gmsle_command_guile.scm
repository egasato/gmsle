
#!/usr/bin/env guile -s
!#
; coding: utf-8
; SPDX-License-Identifier: GPL-3.0-or-later

;;;; GNU Guile Implementation

;; Checks if a command exists:
;; - cmd: The command to check.
(define (gmsle_command cmd)
  (search-path
    (string-split (getenv "PATH") #\:)
    (string-trim-both cmd)))
