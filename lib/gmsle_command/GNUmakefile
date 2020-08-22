#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## Smart loader

ifndef gmsle_command
    ifeq '$(GMSLE_COMMAND_PREFER)' '$(GMSLE_PREFER_SHELL)'
        include $(LIB_GMSLE_PATH)/lib/gmsle_command/gmsle_command_shell.mk
        gmsle_command = $(call gmsle_command_shell,$(1))
    else
        ifndef __gmsle_include_ifndef
            include $(LIB_GMSLE_PATH)/lib/internal/__gmsle_include_ifndef.mk
        endif
        ifneq '$(GMSLE_COMMAND_PREFER)' '$(GMSLE_PREFER_GUILE)'
            $(call __gmsle_include_ifndef,__gmsle_warning,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_warning.mk)
            $(call __gmsle_warning,The variable 'GMSLE_COMMAND_PREFER' has an invalid value.)
            $(call __gmsle_warning,The guile version of 'gmsle_command' will be loaded.)
        endif
        $(call __gmsle_include_ifndef,__gmsle_has_guile,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_has_guile.mk)
        ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
            $(call __gmsle_include_ifndef,gmsle_true,$(LIB_GMSLE_PATH)/lib/gmsle_true/GNUmakefile)
        endif
        ifeq '$(__gmsle_has_guile)' '$(gmsle_true)'
            include $(LIB_GMSLE_PATH)/lib/gmsle_command/gmsle_command_guile.mk
            gmsle_command = $(call gmsle_command_guile,$(1))
        else
            include $(LIB_GMSLE_PATH)/lib/gmsle_command/gmsle_command_shell.mk
            gmsle_command = $(call gmsle_command_shell,$(1))
        endif
    endif
endif #gmsle_command
