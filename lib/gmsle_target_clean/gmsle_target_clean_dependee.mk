#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Make Implementation

## Adds a dependee to an existing clean target:
## - 1: The original 1st argument of 'gmsle_target_clean'.
## - 2: The dependees to add.
define gmsle_target_clean_dependee
$(2): $(call gmsle_target_clean_name,$(1))
endef
