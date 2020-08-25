#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Guile Implementation

# Load the dependencies
$(guile (load "$(LIB_GMSLE_PATH)/lib/gmsle_addsuffix/gmsle_addsuffix_guile.scm"))

## Appends a suffix to the front of each individual name:
## - 1: The suffix.
## - 2: The names.
gmsle_addsuffix_guile = $(guile (gmsle_addsuffix "$(1)" "$(2)"))
