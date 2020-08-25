#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Guile Implementation

# Load the dependencies
$(guile (load "$(LIB_GMSLE_PATH)/lib/gmsle_dir/gmsle_dir_guile.scm"))

## Returns the directory part:
## - 1: The paths.
gmsle_dir_guile = $(guile (gmsle_dir "$(1)"))
