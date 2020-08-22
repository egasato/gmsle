#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## POSIX Shell Implementation

# Load the dependencies
ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
    ifndef __gmsle_include_ifndef
        include $(LIB_GMSLE_PATH)/lib/internal/__gmsle_include_ifndef.mk
    endif
    $(call __gmsle_include_ifndef,gmsle_false,$(LIB_GMSLE_PATH)/lib/gmsle_false/GNUmakefile)
    $(call __gmsle_include_ifndef,gmsle_true,$(LIB_GMSLE_PATH)/lib/gmsle_true/GNUmakefile)
endif

## Logical/boolean NAND operation:
## - 1: The 1st condition.
## - 2: The 2nd condition.
gmsle_nand_shell = $(shell { $(GMSLE_TEST) -z '$(1)' && $(GMSLE_ECHO) '$(gmsle_true)'; } || { $(GMSLE_TEST) -z '$(2)' && $(GMSLE_ECHO) '$(gmsle_true)' || $(GMSLE_ECHO) '$(gmsle_false)'; })
