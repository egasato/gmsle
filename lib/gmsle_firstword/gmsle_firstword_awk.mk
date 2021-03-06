#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## POSIX Shell Implementation (awk)

## Returns the first word of a text:
## - 1: The text.
gmsle_firstword_awk = $(shell $(GMSLE_ECHO) '$(1)' | $(GMSLE_AWK) -f $(LIB_GMSLE_PATH)/lib/gmsle_firstword/gmsle_firstword_awk.awk)
