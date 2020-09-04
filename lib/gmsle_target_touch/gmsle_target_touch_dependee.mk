#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Make Implementation

## Adds a single dependee to an existing touch target:
## - 1: The original 1st argument of 'gmsle_target_touch'.
## - 2: The dependees to add.
define gmsle_target_touch_dependee
$(2): $(call gmsle_target_touch_name,$(1))
endef
