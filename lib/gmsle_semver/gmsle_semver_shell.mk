#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## POSIX Shell Implementation

## Returns the comparison of two semantic version numbers:
## - 1: The 1st version number.
## - 2: The comparison to perform.
## - 3: The 2nd version number.
gmsle_semver_shell = $(shell $(GMSLE_ECHO) '$(1) $(2) $(3)' | $(GMSLE_AWK) -f $(LIB_GMSLE_PATH)/lib/gmsle_semver/gmsle_semver_shell.awk)
