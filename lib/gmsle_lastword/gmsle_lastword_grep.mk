#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## POSIX Shell Implementation (grep)

## Returns the last word of a text:
## - 1: The text.
gmsle_lastword_grep = $(shell $(GMSLE_ECHO) '$(1)' | $(GMSLE_TR) "\n" ' ' | $(GMSLE_GREP) -o -s -m 1 '[^[:space:]]\+[[:space:]]*$$' | $(GMSLE_GREP) -o -s '[^[:space:]]\+')
