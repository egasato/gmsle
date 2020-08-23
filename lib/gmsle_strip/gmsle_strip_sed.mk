#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## POSIX Shell Implementation (sed)

## Strips any leading and trailing whitespace:
## - 1: The text to strip.
gmsle_strip_sed = $(shell $(GMSLE_ECHO) '$(1)' | $(GMSLE_SED) -n -f $(LIB_GMSLE_PATH)/lib/gmsle_strip/gmsle_strip_sed.sed)
