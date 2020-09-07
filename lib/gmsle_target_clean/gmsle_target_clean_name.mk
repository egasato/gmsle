#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Make Implementation

## Returns the name of a clean target:
## - 1: The original 1st argument of 'gmsle_target_clean'.
define gmsle_target_clean_name
$(1).clean
endef
