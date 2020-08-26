#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Guile Implementation

# Load the dependencies
$(guile (load "$(LIB_GMSLE_PATH)/lib/gmsle_realpath/gmsle_realpath_guile.scm"))

## Returns the real path:
## - 1: The paths.
gmsle_realpath_guile = $(guile (gmsle_realpath "$(1)"))
