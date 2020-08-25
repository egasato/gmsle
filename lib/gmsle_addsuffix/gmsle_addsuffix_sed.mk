#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## POSIX Shell Implementation (sed)

## Appends a suffix to the front of each individual name:
## - 1: The suffix.
## - 2: The names.
gmsle_addsuffix_sed = $(shell $(GMSLE_ECHO) '$(2)' | $(GMSLE_SED) -e '/^[[:space:]]*$$/ d' \
                                                                  -e 's/^[[:space:]]\+//'  \
                                                                  -e 's/[[:space:]]\+$$//' \
                                                                  -e 's/[[:space:]]\+/ /g' \
                                                                  -e 's|[^[:space:]]\+|&$(1)|g')
