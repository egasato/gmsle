#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## Native Implementation

## Appends a suffix to the front of each individual name:
## - 1: The suffix.
## - 2: The names.
gmsle_addsuffix_native = $(addsuffix $(1),$(2))
