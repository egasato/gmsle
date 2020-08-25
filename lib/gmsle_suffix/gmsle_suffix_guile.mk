#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Guile Implementation

# Load the dependencies
$(guile (load "$(LIB_GMSLE_PATH)/lib/gmsle_suffix/gmsle_suffix_guile.scm"))

## Returns the suffix:
## - 1: The paths.
gmsle_suffix_guile = $(guile (gmsle_suffix "$(1)"))
