#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## POSIX Shell Implementation

## Returns the nth word of a text:
## - 1: The index.
## - 2: The text.
gmsle_word_shell = $(shell $(GMSLE_ECHO) '$(2)' | $(GMSLE_AWK) -v n='$(1)' -f $(LIB_GMSLE_PATH)/lib/gmsle_word/gmsle_word_shell.awk)
