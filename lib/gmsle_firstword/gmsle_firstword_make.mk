#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Make Implementation

# Load the dependencies
ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
    ifndef __gmsle_include_ifndef
        include $(LIB_GMSLE_PATH)/lib/internal/__gmsle_include_ifndef.mk
    endif
    $(call __gmsle_include_ifndef,gmsle_word,$(LIB_GMSLE_PATH)/lib/gmsle_word/GNUmakefile)
endif

## Returns the first word of a text:
## - 1: The text.
gmsle_firstword_make = $(call gmsle_word,1,$(1))
