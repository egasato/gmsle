#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Guile Implementation

# Load the dependencies
$(guile (load "$(LIB_GMSLE_PATH)/lib/gmsle_basename/gmsle_basename_guile.scm"))

## Returns the basename:
## - 1: The paths.
gmsle_basename_guile = $(guile (gmsle_basename "$(1)"))
