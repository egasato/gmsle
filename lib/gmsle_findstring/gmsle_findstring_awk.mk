#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## POSIX Shell Implementation (awk)

## Finds a string in a text:
## - 1: The string to search for.
## - 2: The text.
gmsle_findstring_awk = $(shell $(GMSLE_ECHO) '$(2)' | $(GMSLE_AWK) -v find='$(1)' -f $(LIB_GMSLE_PATH)/lib/gmsle_findstring/gmsle_findstring_awk.awk)
