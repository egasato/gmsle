#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Guile Implementation

# Load the dependencies
$(guile (load "$(LIB_GMSLE_PATH)/lib/gmsle_xor/gmsle_xor_guile.scm"))

## Logical/boolean XOR operation:
## - 1: The 1st condition.
## - 2: The 2nd condition.
gmsle_xor_guile = $(guile (gmsle_xor "$(1)" "$(2)"))
