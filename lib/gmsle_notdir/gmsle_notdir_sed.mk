#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## POSIX Shell Implementation (sed)

## Returns the non-directory part:
## - 1: The paths.
gmsle_notdir_sed = $(shell $(GMSLE_ECHO) '$(1)' | $(GMSLE_SED) -n -f $(LIB_GMSLE_PATH)/lib/gmsle_notdir/gmsle_notdir_sed.sed)
