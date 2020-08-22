#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Guile Implementation

# Load the dependencies
$(guile (load "$(LIB_GMSLE_PATH)/lib/gmsle_not/gmsle_not_guile.scm"))

## Logical/boolean NOT operation:
## - 1: The predicate.
gmsle_not_guile = $(guile (gmsle_not "$(1)"))
