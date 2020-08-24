#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Guile Implementation

# Load the dependencies
$(guile (load "$(LIB_GMSLE_PATH)/lib/gmsle_firstword/gmsle_firstword_guile.scm"))

## Returns the first word of a text:
## - 1: The text.
gmsle_firstword_guile = $(guile (gmsle_firstword "$(1)"))
