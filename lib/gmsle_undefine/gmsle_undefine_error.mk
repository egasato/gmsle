#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Make Implementation

# Load the dependencies
ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
    ifndef __gmsle_include_ifndef
        include $(LIB_GMSLE_PATH)/lib/internal/__gmsle_include_ifndef.mk
    endif
    $(call __gmsle_include_ifndef,__gmsle_error,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_error.mk)
endif

## Undefines a variable:
## - 1: The variable.
gmsle_undefine = $(call __gmsle_error,The variable '$(1)' cannot be undefined because the directive 'undefine' is not supported)
