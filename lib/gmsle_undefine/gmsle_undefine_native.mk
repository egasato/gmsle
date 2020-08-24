#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Make Implementation

## Undefines a variable:
## - 1: The variable.
gmsle_undefine = $(eval undefine $(1))
