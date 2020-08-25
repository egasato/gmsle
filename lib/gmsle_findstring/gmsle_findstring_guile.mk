#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Guile Implementation

# Load the dependencies
$(guile (load "$(LIB_GMSLE_PATH)/lib/gmsle_findstring/gmsle_findstring_guile.scm"))

## Finds a string in a text:
## - 1: The string to search for.
## - 2: The text.
gmsle_findstring_guile = $(guile (gmsle_findstring "$(1)" "$(2)"))
