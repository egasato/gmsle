#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Guile Implementation

# Load the dependencies
$(guile (load "$(LIB_GMSLE_PATH)/lib/gmsle_words/gmsle_words_guile.scm"))

## Returns the number of words in a text:
## - 1: The text.
gmsle_words_guile = $(guile (gmsle_words "$(1)"))
