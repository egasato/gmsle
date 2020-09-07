#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Make Implementation

## Returns the dependencies of a symlink target:
## - 1: The original 1st argument of 'gmsle_target_ln'.
## - 2: The original 2nd argument of 'gmsle_target_ln'.
define gmsle_target_ln_deps
$(1)
endef
