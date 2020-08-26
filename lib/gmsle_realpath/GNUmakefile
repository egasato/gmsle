#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## Smart loader

ifndef gmsle_realpath
    ifndef __gmsle_include_ifndef
        include $(LIB_GMSLE_PATH)/lib/internal/__gmsle_include_ifndef.mk
    endif
    $(call __gmsle_include_ifndef,__gmsle_has_realpath,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_has_realpath.mk)
    ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
        $(call __gmsle_include_ifndef,gmsle_true,$(LIB_GMSLE_PATH)/lib/gmsle_true/GNUmakefile)
    endif
    ifeq '$(__gmsle_has_realpath)' '$(gmsle_true)'
        include $(LIB_GMSLE_PATH)/lib/gmsle_realpath/gmsle_realpath_native.mk
        gmsle_realpath = $(call gmsle_realpath_native,$(1))
    else ifeq '$(GMSLE_REALPATH_PREFER)' '$(GMSLE_PREFER_SHELL)'
        include $(LIB_GMSLE_PATH)/lib/gmsle_realpath/gmsle_realpath_shell.mk
        gmsle_realpath = $(call gmsle_realpath_shell,$(1))
    else
        ifneq '$(GMSLE_REALPATH_PREFER)' '$(GMSLE_PREFER_GUILE)'
            $(call __gmsle_include_ifndef,__gmsle_warning,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_warning.mk)
            $(call __gmsle_warning,The variable 'GMSLE_REALPATH_PREFER' has an invalid value.)
            $(call __gmsle_warning,The guile version of 'gmsle_realpath' will be loaded.)
        endif
        $(call __gmsle_include_ifndef,__gmsle_has_guile,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_has_guile.mk)
        ifeq '$(__gmsle_has_guile)' '$(gmsle_true)'
            include $(LIB_GMSLE_PATH)/lib/gmsle_realpath/gmsle_realpath_guile.mk
            gmsle_realpath = $(call gmsle_realpath_guile,$(1))
        else
            include $(LIB_GMSLE_PATH)/lib/gmsle_realpath/gmsle_realpath_shell.mk
            gmsle_realpath = $(call gmsle_realpath_shell,$(1))
        endif
    endif
endif #gmsle_realpath
