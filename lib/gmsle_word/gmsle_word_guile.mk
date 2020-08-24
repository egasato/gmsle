#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Guile Implementation

# Load the dependencies
$(guile (load "$(LIB_GMSLE_PATH)/lib/gmsle_word/gmsle_word_guile.scm"))

## Returns the nth word of a text:
## - 1: The index.
## - 2: The text.
gmsle_word_guile = $(guile (gmsle_word "$(1)" "$(2)"))
