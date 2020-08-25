#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## POSIX Shell Implementation (awk)

## Prepends a prefix to the front of each individual name:
## - 1: The prefix.
## - 2: The names.
gmsle_addprefix_awk = $(shell $(GMSLE_ECHO) '$(2)' | $(GMSLE_AWK) -v prefix='$(1)' -f $(LIB_GMSLE_PATH)/lib/gmsle_addprefix/gmsle_addprefix_awk.awk)
