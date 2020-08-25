#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## POSIX Shell Implementation

## Sorts the items of a list:
## - 1: The list.
gmsle_sort_shell = $(shell $(GMSLE_ECHO) '$(1)' | $(GMSLE_TR) '[:space:]' '\n' | $(GMSLE_GREP) -s '[^[:space:]]' | sort)
