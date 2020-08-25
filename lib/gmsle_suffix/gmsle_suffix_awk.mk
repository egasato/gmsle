#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## POSIX Shell Implementation (awk)

## Returns the suffix:
## - 1: The paths.
gmsle_suffix_awk = $(shell $(GMSLE_ECHO) '$(1)' | $(GMSLE_AWK) -f $(LIB_GMSLE_PATH)/lib/gmsle_suffix/gmsle_suffix_awk.awk)
