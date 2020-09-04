#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Make Implementation

## Adds one or more dependency targets to an existing touch target:
## - 1: The original 1st argument of 'gmsle_target_touch'.
## - 2: The dependencies to add.
define gmsle_target_touch_dependency
$(call gmsle_target_touch_name,$(1)): $(2)
endef
