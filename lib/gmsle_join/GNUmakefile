#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## Smart loader

ifndef gmsle_join
    ifndef __gmsle_include_ifndef
        include $(LIB_GMSLE_PATH)/lib/internal/__gmsle_include_ifndef.mk
    endif
    $(call __gmsle_include_ifndef,__gmsle_has_join,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_has_join.mk)
    ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
        $(call __gmsle_include_ifndef,gmsle_true,$(LIB_GMSLE_PATH)/lib/gmsle_true/GNUmakefile)
    endif
    ifeq '$(__gmsle_has_join)' '$(gmsle_true)'
        include $(LIB_GMSLE_PATH)/lib/gmsle_join/gmsle_join_native.mk
        gmsle_join = $(call gmsle_join_native,$(1),$(2))
    else ifeq '$(GMSLE_JOIN_PREFER)' '$(GMSLE_PREFER_SHELL)'
        include $(LIB_GMSLE_PATH)/lib/gmsle_join/gmsle_join_shell.mk
        gmsle_join = $(call gmsle_join_shell,$(1),$(2))
    else
        ifneq '$(GMSLE_JOIN_PREFER)' '$(GMSLE_PREFER_GUILE)'
            $(call __gmsle_include_ifndef,__gmsle_warning,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_warning.mk)
            $(call __gmsle_warning,The variable 'GMSLE_JOIN_PREFER' has an invalid value.)
            $(call __gmsle_warning,The guile version of 'gmsle_join' will be loaded.)
        endif
        $(call __gmsle_include_ifndef,__gmsle_has_guile,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_has_guile.mk)
        ifeq '$(__gmsle_has_guile)' '$(gmsle_true)'
            include $(LIB_GMSLE_PATH)/lib/gmsle_join/gmsle_join_guile.mk
            gmsle_join = $(call gmsle_join_guile,$(1),$(2))
        else
            include $(LIB_GMSLE_PATH)/lib/gmsle_join/gmsle_join_shell.mk
            gmsle_join = $(call gmsle_join_shell,$(1),$(2))
        endif
    endif
endif #gmsle_join
