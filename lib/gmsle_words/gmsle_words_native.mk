#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## Native Implementation

## Returns the number of words in a text:
## - 1: The text.
gmsle_words_native = $(words $(1))
