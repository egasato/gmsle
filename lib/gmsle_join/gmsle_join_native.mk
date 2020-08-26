#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## Native Implementation

## Merges two lists word by word:
## - 1: The 1st list.
## - 2: The 2nd list.
gmsle_join_native = $(join $(1),$(2))
