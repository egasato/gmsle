#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## Native Implementation

## Returns the non-directory part:
## - 1: The paths.
gmsle_notdir_native = $(notdir $(1))
