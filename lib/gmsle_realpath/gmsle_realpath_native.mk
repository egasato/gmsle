#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## Native Implementation

## Returns the real path:
## - 1: The paths.
gmsle_realpath_native = $(realpath $(1))
