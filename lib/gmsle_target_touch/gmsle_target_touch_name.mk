#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Make Implementation

## Returns the name of a touch target:
## - 1: The original 1st argument of 'gmsle_target_touch'.
define gmsle_target_touch_name
$(1)
endef
