#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## Native Implementation

## Strips any leading and trailing whitespace:
## - 1: The text to strip.
gmsle_strip_native = $(strip $(1))
