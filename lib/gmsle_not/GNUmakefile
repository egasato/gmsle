#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## Smart loader

ifndef gmsle_not
    ifeq '$(GMSLE_NOT_PREFER)' '$(GMSLE_PREFER_GUILE)'
        ifndef __gmsle_include_ifndef
            include $(LIB_GMSLE_PATH)/lib/internal/__gmsle_include_ifndef.mk
        endif
        $(call __gmsle_include_ifndef,__gmsle_has_guile,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_has_guile.mk)
        ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
            $(call __gmsle_include_ifndef,gmsle_true,$(LIB_GMSLE_PATH)/lib/gmsle_true/GNUmakefile)
        endif
        ifeq '$(__gmsle_has_guile)' '$(gmsle_true)'
            include $(LIB_GMSLE_PATH)/lib/gmsle_not/gmsle_not_guile.mk
            gmsle_not = $(call gmsle_not_guile,$(1))
        else
            include $(LIB_GMSLE_PATH)/lib/gmsle_not/gmsle_not_make.mk
            gmsle_not = $(call gmsle_not_make,$(1))
        endif
    else ifeq '$(GMSLE_NOT_PREFER)' '$(GMSLE_PREFER_SHELL)'
        include $(LIB_GMSLE_PATH)/lib/gmsle_not/gmsle_not_shell.mk
        gmsle_not = $(call gmsle_not_shell,$(1))
    else
        ifneq '$(GMSLE_NOT_PREFER)' '$(GMSLE_PREFER_MAKE)'
            ifndef __gmsle_include_ifndef
                include $(LIB_GMSLE_PATH)/lib/internal/__gmsle_include_ifndef.mk
            endif
            $(call __gmsle_include_ifndef,__gmsle_warning,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_warning.mk)
            $(call __gmsle_warning,The variable 'GMSLE_NOT_PREFER' has an invalid value.)
            $(call __gmsle_warning,The make version of 'gmsle_not' will be loaded.)
        endif
        include $(LIB_GMSLE_PATH)/lib/gmsle_not/gmsle_not_make.mk
        gmsle_not = $(call gmsle_not_make,$(1))
    endif
endif #gmsle_not
