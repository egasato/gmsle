#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## POSIX Shell Implementation (awk)

## Appends a suffix to the front of each individual name:
## - 1: The suffix.
## - 2: The names.
gmsle_addsuffix_awk = $(shell $(GMSLE_ECHO) '$(2)' | $(GMSLE_AWK) -v suffix='$(1)' -f $(LIB_GMSLE_PATH)/lib/gmsle_addsuffix/gmsle_addsuffix_awk.awk)
