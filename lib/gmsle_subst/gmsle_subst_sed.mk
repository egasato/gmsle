#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## POSIX Shell Implementation (sed)

## Replaces literal text:
## - 1: The text to search for.
## - 2: The text to replace with.
## - 3: The text.
gmsle_subst_sed = $(shell $(GMSLE_ECHO) '$(3)' | $(GMSLE_SED) 's|$(1)|$(2)|g')
