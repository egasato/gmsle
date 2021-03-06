#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## Smart loader

ifndef gmsle_notdir
    ifndef __gmsle_include_ifndef
        include $(LIB_GMSLE_PATH)/lib/internal/__gmsle_include_ifndef.mk
    endif
    $(call __gmsle_include_ifndef,__gmsle_has_notdir,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_has_notdir.mk)
    ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
        $(call __gmsle_include_ifndef,gmsle_true,$(LIB_GMSLE_PATH)/lib/gmsle_true/GNUmakefile)
    endif
    ifeq '$(__gmsle_has_notdir)' '$(gmsle_true)'
        include $(LIB_GMSLE_PATH)/lib/gmsle_notdir/gmsle_notdir_native.mk
        gmsle_notdir = $(call gmsle_notdir_native,$(1))
    else ifeq '$(GMSLE_NOTDIR_PREFER)' '$(GMSLE_PREFER_SHELL)'
        $(call __gmsle_include_ifndef,__gmsle_warning,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_warning.mk)
        $(call __gmsle_warning,The variable 'GMSLE_NOTDIR_PREFER' has an invalid value.)
        $(call __gmsle_warning,A specific shell version of 'gmsle_notdir' will be loaded.)
        ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
            $(call __gmsle_include_ifndef,gmsle_command,$(LIB_GMSLE_PATH)/lib/gmsle_command/GNUmakefile)
        endif
        ifeq '$(call gmsle_command,awk)' '$(gmsle_true)'
            include $(LIB_GMSLE_PATH)/lib/gmsle_notdir/gmsle_notdir_awk.mk
            gmsle_notdir = $(call gmsle_notdir_awk,$(1))
        else ifeq '$(call gmsle_command,sed)' '$(gmsle_true)'
            include $(LIB_GMSLE_PATH)/lib/gmsle_notdir/gmsle_notdir_sed.mk
            gmsle_notdir = $(call gmsle_notdir_sed,$(1))
        else
            $(call __gmsle_warning,Loading the 'awk' implementation as a fallback.)
            include $(LIB_GMSLE_PATH)/lib/gmsle_notdir/gmsle_notdir_awk.mk
            gmsle_notdir = $(call gmsle_notdir_awk,$(1))
        endif
    else ifeq '$(GMSLE_NOTDIR_PREFER)' '$(GMSLE_PREFER_AWK)'
        include $(LIB_GMSLE_PATH)/lib/gmsle_notdir/gmsle_notdir_awk.mk
        gmsle_notdir = $(call gmsle_notdir_awk,$(1))
    else ifeq '$(GMSLE_NOTDIR_PREFER)' '$(GMSLE_PREFER_SED)'
        include $(LIB_GMSLE_PATH)/lib/gmsle_notdir/gmsle_notdir_sed.mk
        gmsle_notdir = $(call gmsle_notdir_sed,$(1))
    else
        ifneq '$(GMSLE_NOTDIR_PREFER)' '$(GMSLE_PREFER_GUILE)'
            $(call __gmsle_include_ifndef,__gmsle_warning,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_warning.mk)
            $(call __gmsle_warning,The variable 'GMSLE_NOTDIR_PREFER' has an invalid value.)
            $(call __gmsle_warning,The guile version of 'gmsle_notdir' will be loaded.)
        endif
        $(call __gmsle_include_ifndef,__gmsle_has_guile,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_has_guile.mk)
        ifeq '$(__gmsle_has_guile)' '$(gmsle_true)'
            include $(LIB_GMSLE_PATH)/lib/gmsle_notdir/gmsle_notdir_guile.mk
            gmsle_notdir = $(call gmsle_notdir_guile,$(1))
        else
            ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
                $(call __gmsle_include_ifndef,gmsle_command,$(LIB_GMSLE_PATH)/lib/gmsle_command/GNUmakefile)
            endif
            ifeq '$(call gmsle_command,awk)' '$(gmsle_true)'
                include $(LIB_GMSLE_PATH)/lib/gmsle_notdir/gmsle_notdir_awk.mk
                gmsle_notdir = $(call gmsle_notdir_awk,$(1))
            else ifeq '$(call gmsle_command,sed)' '$(gmsle_true)'
                include $(LIB_GMSLE_PATH)/lib/gmsle_notdir/gmsle_notdir_sed.mk
                gmsle_notdir = $(call gmsle_notdir_sed,$(1))
            else
                include $(LIB_GMSLE_PATH)/lib/gmsle_notdir/gmsle_notdir_awk.mk
                gmsle_notdir = $(call gmsle_notdir_awk,$(1))
            endif
        endif
    endif
endif #gmsle_notdir
