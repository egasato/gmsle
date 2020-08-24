#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## Native Implementation

## Returns the last word of a text:
## - 1: The text.
gmsle_lastword_native = $(lastword $(1))
