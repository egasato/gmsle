#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## POSIX Shell Implementation (grep)

## Returns the number of words in a text:
## - 1: The text.
gmsle_words_grep = $(shell $(GMSLE_ECHO) '$(1)' | $(GMSLE_GREP) -o -s '[^[:space:]]\+' | $(GMSLE_GREP) -c -s '')
