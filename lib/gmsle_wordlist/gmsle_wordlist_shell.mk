#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## POSIX Shell Implementation (awk)

## Returns an inclusive slice of a list of words:
## - 1: The start index.
## - 2: The end index (inclusive).
## - 3: The list.
gmsle_wordlist_shell = $(shell $(GMSLE_ECHO) '$(3)' | $(GMSLE_AWK) -v s='$(1)' -v e='$(2)' -f $(LIB_GMSLE_PATH)/lib/gmsle_wordlist/gmsle_wordlist_shell.awk)
