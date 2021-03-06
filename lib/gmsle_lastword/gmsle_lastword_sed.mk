#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## POSIX Shell Implementation (sed)

## Returns the last word of a text:
## - 1: The text.
gmsle_lastword_sed = $(shell $(GMSLE_ECHO) '$(1)' | $(GMSLE_SED) -n -f $(LIB_GMSLE_PATH)/lib/gmsle_lastword/gmsle_lastword_sed.sed)
