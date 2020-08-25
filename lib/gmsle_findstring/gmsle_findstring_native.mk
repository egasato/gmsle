#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## Native Implementation

## Finds a string in a text:
## - 1: The string to search for.
## - 2: The text.
gmsle_findstring_native = $(findstring $(1),$(2))
