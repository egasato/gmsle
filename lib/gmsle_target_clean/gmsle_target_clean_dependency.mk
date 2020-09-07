#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Make Implementation

## Adds one or more dependency targets to an existing clean target:
## - 1: The original 1st argument of 'gmsle_target_clean'.
## - 2: The dependencies to add.
define gmsle_target_clean_dependency
$(call gmsle_target_clean_name,$(1)): $(2)
endef
