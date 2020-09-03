#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Make Implementation

# Load the dependencies
ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
    ifndef __gmsle_include_ifndef
        include $(LIB_GMSLE_PATH)/lib/internal/__gmsle_include_ifndef.mk
    endif
    $(call __gmsle_include_ifndef,gmsle_eval,$(LIB_GMSLE_PATH)/lib/gmsle_eval/GNUmakefile)
    $(call __gmsle_include_ifndef,gmsle_strip,$(LIB_GMSLE_PATH)/lib/gmsle_strip/GNUmakefile)
endif

## Evaluates a target function:
## - 1: The target function name without the 'gmsle_target_' prefix.
## - 2: The 1st argument to pass to the target function.
## - 3: The 2nd argument to pass to the target function.
gmsle_target_make = $(call gmsle_eval,$(call gmsle_target_$(call gmsle_strip,$(1)),$(2),$(3)))
