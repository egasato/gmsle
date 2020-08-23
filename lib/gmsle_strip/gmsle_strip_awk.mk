#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## POSIX Shell Implementation (awk)

## Strips any leading and trailing whitespace:
## - 1: The text to strip.
gmsle_strip_awk = $(shell $(GMSLE_ECHO) '$(1)' | $(GMSLE_AWK) -f $(LIB_GMSLE_PATH)/lib/gmsle_strip/gmsle_strip_awk.awk)
