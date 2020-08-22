#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## Smart loader

ifndef gmsle_or
    ifndef __gmsle_include_ifndef
        include $(LIB_GMSLE_PATH)/lib/internal/__gmsle_include_ifndef.mk
    endif
    $(call __gmsle_include_ifndef,__gmsle_has_or,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_has_or.mk)
    ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
        $(call __gmsle_include_ifndef,gmsle_true,$(LIB_GMSLE_PATH)/lib/gmsle_true/GNUmakefile)
    endif
    ifeq '$(__gmsle_has_or)' '$(gmsle_true)'
        include $(LIB_GMSLE_PATH)/lib/gmsle_or/gmsle_or_native.mk
        gmsle_or = $(call gmsle_or_native,$(1),$(2))
    else ifeq '$(GMSLE_OR_PREFER)' '$(GMSLE_PREFER_SHELL)'
        include $(LIB_GMSLE_PATH)/lib/gmsle_or/gmsle_or_shell.mk
        gmsle_or = $(call gmsle_or_shell,$(1),$(2))
    else ifeq '$(GMSLE_OR_PREFER)' '$(GMSLE_PREFER_GUILE)'
        $(call __gmsle_include_ifndef,__gmsle_has_guile,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_has_guile.mk)
        ifeq '$(__gmsle_has_guile)' '$(gmsle_true)'
            include $(LIB_GMSLE_PATH)/lib/gmsle_or/gmsle_or_guile.mk
            gmsle_or = $(call gmsle_or_guile,$(1),$(2))
        else
            include $(LIB_GMSLE_PATH)/lib/gmsle_or/gmsle_or_make.mk
            gmsle_or = $(call gmsle_or_make,$(1),$(2))
        endif
    else
        ifneq '$(GMSLE_OR_PREFER)' '$(GMSLE_PREFER_MAKE)'
            $(call __gmsle_include_ifndef,__gmsle_warning,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_warning.mk)
            $(call __gmsle_warning,The variable 'GMSLE_OR_PREFER' has an invalid value.)
            $(call __gmsle_warning,The make version of 'gmsle_or' will be loaded.)
        endif
        include $(LIB_GMSLE_PATH)/lib/gmsle_or/gmsle_or_make.mk
        gmsle_or = $(call gmsle_or_make,$(1),$(2))
    endif
endif #gmsle_or
