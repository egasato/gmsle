#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## Native Implementation

## Prepends a prefix to the front of each individual name:
## - 1: The prefix.
## - 2: The names.
gmsle_addprefix_native = $(addprefix $(1),$(2))
