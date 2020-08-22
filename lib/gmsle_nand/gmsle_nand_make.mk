#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Make Implementation

# Load the dependencies
ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
    ifndef __gmsle_include_ifndef
        include $(LIB_GMSLE_PATH)/lib/internal/__gmsle_include_ifndef.mk
    endif
    $(call __gmsle_include_ifndef,gmsle_and,$(LIB_GMSLE_PATH)/lib/gmsle_and/GNUmakefile)
    $(call __gmsle_include_ifndef,gmsle_not,$(LIB_GMSLE_PATH)/lib/gmsle_not/GNUmakefile)
endif

## Logical/boolean NAND operation:
## - 1: The 1st condition.
## - 2: The 2nd condition.
gmsle_nand_make = $(call gmsle_not,$(call gmsle_and,$(1),$(2)))
