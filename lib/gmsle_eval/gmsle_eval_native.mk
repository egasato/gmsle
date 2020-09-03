#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## Native Implementation

## Evaluates a string as makefile syntax:
## - 1: The text to evaluate.
gmsle_eval_native = $(eval $(1))
