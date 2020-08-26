#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## POSIX Shell Implementation

## Returns the real path:
## - 1: The paths.
gmsle_realpath_shell = $(shell $(GMSLE_ECHO) '$(1)' | $(GMSLE_AWK) -f $(LIB_GMSLE_PATH)/lib/gmsle_realpath/gmsle_realpath_shell.awk)
