#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Guile Implementation

# Load the dependencies
$(guile (load "$(LIB_GMSLE_PATH)/lib/gmsle_nand/gmsle_nand_guile.scm"))

## Logical/boolean NAND operation:
## - 1: The 1st condition.
## - 2: The 2nd condition.
gmsle_nand_guile = $(guile (gmsle_nand "$(1)" "$(2)"))
