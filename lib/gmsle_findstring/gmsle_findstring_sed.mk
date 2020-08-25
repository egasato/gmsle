#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## POSIX Shell Implementation (sed)

## Finds a string in a text:
## - 1: The string to search for.
## - 2: The text.
gmsle_findstring_sed = $(shell $(GMSLE_ECHO) '$(2)' | $(GMSLE_SED) -n '/$(1)/{s|.*$(1).*|$(1)|p}')
