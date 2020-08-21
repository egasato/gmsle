#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## Smart loader

ifndef gmsle_if
    ifndef __gmsle_include_ifndef
        include $(LIB_GMSLE_PATH)/lib/internal/__gmsle_include_ifndef.mk
    endif
    $(call __gmsle_include_ifndef,__gmsle_has_if,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_has_if.mk)
    ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
        $(call __gmsle_include_ifndef,gmsle_true,$(LIB_GMSLE_PATH)/lib/gmsle_true/GNUmakefile)
    endif
    ifeq '$(__gmsle_has_if)' '$(gmsle_true)'
        include $(LIB_GMSLE_PATH)/lib/gmsle_if/gmsle_if_native.mk
        gmsle_if = $(call gmsle_if_native,$(1),$(2),$(3))
    else ifeq '$(GMSLE_IF_PREFER)' '$(GMSLE_PREFER_SHELL)'
        include $(LIB_GMSLE_PATH)/lib/gmsle_if/gmsle_if_shell.mk
        gmsle_if = $(call gmsle_if_shell,$(1),$(2),$(3))
    else
        ifneq '$(GMSLE_IF_PREFER)' '$(GMSLE_PREFER_GUILE)'
            $(call __gmsle_include_ifndef,__gmsle_warning,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_warning.mk)
            $(call __gmsle_warning,The variable 'GMSLE_IF_PREFER' has an invalid value.)
            $(call __gmsle_warning,The guile version of 'gmsle_if' will be loaded.)
        endif
        $(call __gmsle_include_ifndef,__gmsle_has_guile,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_has_guile.mk)
        ifeq '$(__gmsle_has_guile)' '$(gmsle_true)'
            include $(LIB_GMSLE_PATH)/lib/gmsle_if/gmsle_if_guile.mk
            gmsle_if = $(call gmsle_if_guile,$(1),$(2),$(3))
        else
            include $(LIB_GMSLE_PATH)/lib/gmsle_if/gmsle_if_shell.mk
            gmsle_if = $(call gmsle_if_shell,$(1),$(2),$(3))
        endif
    endif
endif #gmsle_if
