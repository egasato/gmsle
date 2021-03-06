#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Guile Implementation

# Load the dependencies
$(guile (load "$(LIB_GMSLE_PATH)/lib/gmsle_nor/gmsle_nor_guile.scm"))

## Logical/boolean NOR operation:
## - 1: The 1st condition.
## - 2: The 2nd condition.
gmsle_nor_guile = $(guile (gmsle_nor "$(1)" "$(2)"))
