#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## POSIX Shell Implementation (sed)

## Prepends a prefix to the front of each individual name:
## - 1: The prefix.
## - 2: The names.
gmsle_addprefix_sed = $(shell $(GMSLE_ECHO) '$(2)' | $(GMSLE_SED) -e '/^[[:space:]]*$$/ d' \
                                                                  -e 's/^[[:space:]]\+//'  \
                                                                  -e 's/[[:space:]]\+$$//' \
                                                                  -e 's/[[:space:]]\+/ /g' \
                                                                  -e 's|[^[:space:]]\+|$(1)&|g')
