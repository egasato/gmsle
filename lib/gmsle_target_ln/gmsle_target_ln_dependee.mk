#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Make Implementation

## Adds a single dependee to an existing symlink target:
## - 1: The original 1st argument of 'gmsle_target_ln'.
## - 2: The original 2nd argument of 'gmsle_target_ln'.
## - 3: The dependees to add.
define gmsle_target_ln_dependee
$(3): $(call gmsle_target_ln_name,$(1),$(2))
endef
