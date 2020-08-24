#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Guile Implementation

# Load the dependencies
$(guile (load "$(LIB_GMSLE_PATH)/lib/gmsle_lastword/gmsle_lastword_guile.scm"))

## Returns the last word of a text:
## - 1: The text.
gmsle_lastword_guile = $(guile (gmsle_lastword "$(1)"))
