#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Guile Implementation

# Load the dependencies
$(guile (load "$(LIB_GMSLE_PATH)/lib/gmsle_subst/gmsle_subst_guile.scm"))

## Replaces literal text:
## - 1: The text to search for.
## - 2: The text to replace with.
## - 3: The text.
gmsle_subst_guile = $(guile (gmsle_subst "$(1)" "$(2)" "$(3)"))
