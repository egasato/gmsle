#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## POSIX Shell Implementation

## Merges two lists word by word:
## - 1: The 1st list.
## - 2: The 2nd list.
gmsle_join_shell = $(shell $(GMSLE_AWK) -v list1='$(1)' -v list2='$(2)' -f $(LIB_GMSLE_PATH)/lib/gmsle_join/gmsle_join_shell.awk)
