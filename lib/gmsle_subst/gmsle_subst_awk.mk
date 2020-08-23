#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## POSIX Shell Implementation (awk)

## Replaces literal text:
## - 1: The text to search for.
## - 2: The text to replace with.
## - 3: The text.
gmsle_subst_awk = $(shell $(GMSLE_ECHO) '$(3)' | $(GMSLE_AWK) -v from='$(1)' -v to='$(2)' -f $(LIB_GMSLE_PATH)/lib/gmsle_subst/gmsle_subst_awk.awk)
