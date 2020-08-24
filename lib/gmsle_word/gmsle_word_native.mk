#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## Native Implementation

## Returns the nth word of a text:
## - 1: The index.
## - 2: The text.
gmsle_word_native = $(word $(1),$(2))
