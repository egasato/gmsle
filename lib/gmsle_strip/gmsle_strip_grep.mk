#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## POSIX Shell Implementation (grep)

## Strips any leading and trailing whitespace:
## - 1: The text to strip.
gmsle_strip_grep = $(shell $(GMSLE_ECHO) '$(1)' | $(GMSLE_GREP) -o -s '[^[:space:]].*' | $(GMSLE_GREP) -o -s '.*[^[:space:]]')
