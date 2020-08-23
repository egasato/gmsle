#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Guile Implementation

# Load the dependencies
$(guile (load "$(LIB_GMSLE_PATH)/lib/gmsle_wordlist/gmsle_wordlist_guile.scm"))

## Returns an inclusive slice of a list of words:
## - 1: The start index.
## - 2: The end index (inclusive).
## - 3: The list.
gmsle_wordlist_guile = $(guile (gmsle_wordlist "$(1)" "$(2)" "$(3)"))
