#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Guile Implementation

# Load the dependencies
$(guile (load "$(LIB_GMSLE_PATH)/lib/gmsle_abspath/gmsle_abspath_guile.scm"))

## Returns the absolute path:
## - 1: The paths.
gmsle_abspath_guile = $(guile (gmsle_abspath "$(1)"))
