#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Guile Implementation

# Load the dependencies
$(guile (load "$(LIB_GMSLE_PATH)/lib/gmsle_addprefix/gmsle_addprefix_guile.scm"))

## Prepends a prefix to the front of each individual name:
## - 1: The prefix.
## - 2: The names.
gmsle_addprefix_guile = $(guile (gmsle_addprefix "$(1)" "$(2)"))
