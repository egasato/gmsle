#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Make Implementation

# Load the dependencies
ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
    ifndef __gmsle_include_ifndef
        include $(LIB_GMSLE_PATH)/lib/internal/__gmsle_include_ifndef.mk
    endif
    $(call __gmsle_include_ifndef,gmsle_not,$(LIB_GMSLE_PATH)/lib/gmsle_not/GNUmakefile)
    $(call __gmsle_include_ifndef,gmsle_or,$(LIB_GMSLE_PATH)/lib/gmsle_or/GNUmakefile)
endif

## Logical/boolean NOR operation:
## - 1: The 1st condition.
## - 2: The 2nd condition.
gmsle_nor_make = $(call gmsle_not,$(call gmsle_or,$(1),$(2)))
