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

## Checks if a command exists:
## - 1: The command.
gmsle_command_shell = $(shell $(GMSLE_COMMAND) $(1) > /dev/null && $(GMSLE_ECHO) '$(gmsle_true)' || $(GMSLE_ECHO) '$(gmsle_false)')
