#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## Native Implementation

## Replaces literal text:
## - 1: The text to search for.
## - 2: The text to replace with.
## - 3: The text.
gmsle_subst_native = $(subst $(1),$(2),$(3))
