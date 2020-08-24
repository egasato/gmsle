#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## Smart loader

ifndef gmsle_firstword
    ifndef __gmsle_include_ifndef
        include $(LIB_GMSLE_PATH)/lib/internal/__gmsle_include_ifndef.mk
    endif
    $(call __gmsle_include_ifndef,__gmsle_has_firstword,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_has_firstword.mk)
    ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
        $(call __gmsle_include_ifndef,gmsle_true,$(LIB_GMSLE_PATH)/lib/gmsle_true/GNUmakefile)
    endif
    ifeq '$(__gmsle_has_firstword)' '$(gmsle_true)'
        include $(LIB_GMSLE_PATH)/lib/gmsle_firstword/gmsle_firstword_native.mk
        gmsle_firstword = $(call gmsle_firstword_native,$(1))
    else ifeq '$(GMSLE_FIRSTWORD_PREFER)' '$(GMSLE_PREFER_SHELL)'
        $(call __gmsle_include_ifndef,__gmsle_warning,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_warning.mk)
        $(call __gmsle_warning,The variable 'GMSLE_FIRSTWORD_PREFER' has an invalid value.)
        $(call __gmsle_warning,A specific shell version of 'gmsle_firstword' will be loaded.)
        ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
            $(call __gmsle_include_ifndef,gmsle_command,$(LIB_GMSLE_PATH)/lib/gmsle_command/GNUmakefile)
        endif
        ifeq '$(call gmsle_command,awk)' '$(gmsle_true)'
            include $(LIB_GMSLE_PATH)/lib/gmsle_firstword/gmsle_firstword_awk.mk
            gmsle_firstword = $(call gmsle_firstword_awk,$(1))
        else ifeq '$(call gmsle_command,sed)' '$(gmsle_true)'
            include $(LIB_GMSLE_PATH)/lib/gmsle_firstword/gmsle_firstword_sed.mk
            gmsle_firstword = $(call gmsle_firstword_sed,$(1))
        else ifeq '$(call gmsle_command,grep)' '$(gmsle_true)'
            include $(LIB_GMSLE_PATH)/lib/gmsle_firstword/gmsle_firstword_grep.mk
            gmsle_firstword = $(call gmsle_firstword_grep,$(1))
        else
            $(call __gmsle_warning,Loading the 'awk' implementation as a fallback.)
            include $(LIB_GMSLE_PATH)/lib/gmsle_firstword/gmsle_firstword_awk.mk
            gmsle_firstword = $(call gmsle_firstword_awk,$(1))
        endif
    else ifeq '$(GMSLE_FIRSTWORD_PREFER)' '$(GMSLE_PREFER_AWK)'
        include $(LIB_GMSLE_PATH)/lib/gmsle_firstword/gmsle_firstword_awk.mk
        gmsle_firstword = $(call gmsle_firstword_awk,$(1))
    else ifeq '$(GMSLE_FIRSTWORD_PREFER)' '$(GMSLE_PREFER_SED)'
        include $(LIB_GMSLE_PATH)/lib/gmsle_firstword/gmsle_firstword_sed.mk
        gmsle_firstword = $(call gmsle_firstword_sed,$(1))
    else ifeq '$(GMSLE_FIRSTWORD_PREFER)' '$(GMSLE_PREFER_GREP)'
        include $(LIB_GMSLE_PATH)/lib/gmsle_firstword/gmsle_firstword_grep.mk
        gmsle_firstword = $(call gmsle_firstword_grep,$(1))
    else ifeq '$(GMSLE_FIRSTWORD_PREFER)' '$(GMSLE_PREFER_GUILE)'
        $(call __gmsle_include_ifndef,__gmsle_has_guile,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_has_guile.mk)
        ifeq '$(__gmsle_has_guile)' '$(gmsle_true)'
            include $(LIB_GMSLE_PATH)/lib/gmsle_firstword/gmsle_firstword_guile.mk
            gmsle_firstword = $(call gmsle_firstword_guile,$(1))
        else
            ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
                $(call __gmsle_include_ifndef,gmsle_command,$(LIB_GMSLE_PATH)/lib/gmsle_command/GNUmakefile)
            endif
            ifeq '$(call gmsle_command,awk)' '$(gmsle_true)'
                include $(LIB_GMSLE_PATH)/lib/gmsle_firstword/gmsle_firstword_awk.mk
                gmsle_firstword = $(call gmsle_firstword_awk,$(1))
            else ifeq '$(call gmsle_command,sed)' '$(gmsle_true)'
                include $(LIB_GMSLE_PATH)/lib/gmsle_firstword/gmsle_firstword_sed.mk
                gmsle_firstword = $(call gmsle_firstword_sed,$(1))
            else ifeq '$(call gmsle_command,grep)' '$(gmsle_true)'
                include $(LIB_GMSLE_PATH)/lib/gmsle_firstword/gmsle_firstword_grep.mk
                gmsle_firstword = $(call gmsle_firstword_grep,$(1))
            else
                include $(LIB_GMSLE_PATH)/lib/gmsle_firstword/gmsle_firstword_awk.mk
                gmsle_firstword = $(call gmsle_firstword_awk,$(1))
            endif
        endif
    else
        ifneq '$(GMSLE_FIRSTWORD_PREFER)' '$(GMSLE_PREFER_MAKE)'
            $(call __gmsle_include_ifndef,__gmsle_warning,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_warning.mk)
            $(call __gmsle_warning,The variable 'GMSLE_FIRSTWORD_PREFER' has an invalid value.)
            $(call __gmsle_warning,The make version of 'gmsle_firstword' will be loaded.)
        endif
        include $(LIB_GMSLE_PATH)/lib/gmsle_firstword/gmsle_firstword_make.mk
        gmsle_firstword = $(call gmsle_firstword_make,$(1))
    endif
endif #gmsle_firstword
