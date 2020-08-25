#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## Smart loader

ifndef gmsle_sort
    ifndef __gmsle_include_ifndef
        include $(LIB_GMSLE_PATH)/lib/internal/__gmsle_include_ifndef.mk
    endif
    $(call __gmsle_include_ifndef,__gmsle_has_sort,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_has_sort.mk)
    ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
        $(call __gmsle_include_ifndef,gmsle_true,$(LIB_GMSLE_PATH)/lib/gmsle_true/GNUmakefile)
    endif
    ifeq '$(__gmsle_has_sort)' '$(gmsle_true)'
        include $(LIB_GMSLE_PATH)/lib/gmsle_sort/gmsle_sort_native.mk
        gmsle_sort = $(call gmsle_sort_native,$(1))
    else ifeq '$(GMSLE_SORT_PREFER)' '$(GMSLE_PREFER_SHELL)'
        include $(LIB_GMSLE_PATH)/lib/gmsle_sort/gmsle_sort_shell.mk
        gmsle_sort = $(call gmsle_sort_shell,$(1))
    else ifeq '$(GMSLE_SORT_PREFER)' '$(GMSLE_PREFER_AWK)'
        include $(LIB_GMSLE_PATH)/lib/gmsle_sort/gmsle_sort_awk.mk
        gmsle_sort = $(call gmsle_sort_awk,$(1))
    else
        ifneq '$(GMSLE_SORT_PREFER)' '$(GMSLE_PREFER_GUILE)'
            $(call __gmsle_include_ifndef,__gmsle_warning,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_warning.mk)
            $(call __gmsle_warning,The variable 'GMSLE_SORT_PREFER' has an invalid value.)
            $(call __gmsle_warning,The guile version of 'gmsle_sort' will be loaded.)
        endif
        $(call __gmsle_include_ifndef,__gmsle_has_guile,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_has_guile.mk)
        ifeq '$(__gmsle_has_guile)' '$(gmsle_true)'
            include $(LIB_GMSLE_PATH)/lib/gmsle_sort/gmsle_sort_guile.mk
            gmsle_sort = $(call gmsle_sort_guile,$(1))
        else
            include $(LIB_GMSLE_PATH)/lib/gmsle_sort/gmsle_sort_shell.mk
            gmsle_sort = $(call gmsle_sort_shell,$(1))
        endif
    endif
endif #gmsle_sort
