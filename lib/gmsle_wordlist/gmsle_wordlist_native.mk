#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## Native Implementation

## Returns an inclusive slice of a list of words:
## - 1: The start index.
## - 2: The end index (inclusive).
## - 3: The list.
gmsle_wordlist_native = $(wordlist $(1),$(2),$(3))
