#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## POSIX Shell Implementation (grep)

## Finds a string in a text:
## - 1: The string to search for.
## - 2: The text.
gmsle_findstring_grep = $(shell $(GMSLE_ECHO) '$(2)' | $(GMSLE_GREP) -o -s -m 1 -F '$(1)')
