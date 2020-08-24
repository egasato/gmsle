#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## Native Implementation

## Returns the first word of a text:
## - 1: The text.
gmsle_firstword_native = $(firstword $(1))
