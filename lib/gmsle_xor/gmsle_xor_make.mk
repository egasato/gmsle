#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Make Implementation

# Load the dependencies
ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
    ifndef __gmsle_include_ifndef
        include $(LIB_GMSLE_PATH)/lib/internal/__gmsle_include_ifndef.mk
    endif
    $(call __gmsle_include_ifndef,gmsle_if,$(LIB_GMSLE_PATH)/lib/gmsle_if/GNUmakefile)
    $(call __gmsle_include_ifndef,gmsle_false,$(LIB_GMSLE_PATH)/lib/gmsle_false/GNUmakefile)
endif

## Logical/boolean XOR operation:
## - 1: The 1st condition.
## - 2: The 2nd condition.
gmsle_xor_make = $(call gmsle_if,$(1),$(call gmsle_if,$(2),$(gmsle_false),$(1)),$(call gmsle_if,$(2),$(2),$(gmsle_false)))
