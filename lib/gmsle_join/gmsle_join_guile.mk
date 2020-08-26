#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Guile Implementation

# Load the dependencies
$(guile (load "$(LIB_GMSLE_PATH)/lib/gmsle_join/gmsle_join_guile.scm"))

## Merges two lists word by word:
## - 1: The 1st list.
## - 2: The 2nd list.
gmsle_join_guile = $(guile (gmsle_join "$(1)" "$(2)"))
