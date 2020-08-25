#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Guile Implementation

# Load the dependencies
$(guile (load "$(LIB_GMSLE_PATH)/lib/gmsle_sort/gmsle_sort_guile.scm"))

## Sorts the items of a list:
## - 1: The list.
gmsle_sort_guile = $(guile (gmsle_sort "$(1)"))
