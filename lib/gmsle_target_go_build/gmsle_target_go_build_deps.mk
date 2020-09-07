#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Make Implementation

## Returns the dependencies of a Go build target:
## - 1: The original 1st argument of 'gmsle_target_go_build'.
## - 2: The original 2nd argument of 'gmsle_target_go_build'.
define gmsle_target_go_build_deps
$(1)
endef
