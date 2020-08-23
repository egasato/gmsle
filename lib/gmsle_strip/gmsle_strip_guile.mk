#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Guile Implementation

# Load the dependencies
$(guile (load "$(LIB_GMSLE_PATH)/lib/gmsle_strip/gmsle_strip_guile.scm"))

## Strips any leading and trailing whitespace:
## - 1: The text to strip.
gmsle_strip_guile = $(guile (gmsle_strip "$(1)"))
