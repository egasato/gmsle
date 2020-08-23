#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## Smart loader

ifndef gmsle_strip
    ifndef __gmsle_include_ifndef
        include $(LIB_GMSLE_PATH)/lib/internal/__gmsle_include_ifndef.mk
    endif
    $(call __gmsle_include_ifndef,__gmsle_has_strip,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_has_strip.mk)
    ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
        $(call __gmsle_include_ifndef,gmsle_true,$(LIB_GMSLE_PATH)/lib/gmsle_true/GNUmakefile)
    endif
    ifeq '$(__gmsle_has_strip)' '$(gmsle_true)'
        include $(LIB_GMSLE_PATH)/lib/gmsle_strip/gmsle_strip_native.mk
        gmsle_strip = $(call gmsle_strip_native,$(1))
    else ifeq '$(GMSLE_STRIP_PREFER)' '$(GMSLE_PREFER_SHELL)'
        $(call __gmsle_include_ifndef,__gmsle_warning,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_warning.mk)
        $(call __gmsle_warning,The variable 'GMSLE_STRIP_PREFER' has an invalid value.)
        $(call __gmsle_warning,A specific shell version of 'gmsle_strip' will be loaded.)
        ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
            $(call __gmsle_include_ifndef,gmsle_command,$(LIB_GMSLE_PATH)/lib/gmsle_command/GNUmakefile)
        endif
        ifeq '$(call gmsle_command,awk)' '$(gmsle_true)'
            include $(LIB_GMSLE_PATH)/lib/gmsle_strip/gmsle_strip_awk.mk
            gmsle_strip = $(call gmsle_strip_awk,$(1))
        else ifeq '$(call gmsle_command,sed)' '$(gmsle_true)'
            include $(LIB_GMSLE_PATH)/lib/gmsle_strip/gmsle_strip_sed.mk
            gmsle_strip = $(call gmsle_strip_sed,$(1))
        else ifeq '$(call gmsle_command,grep)' '$(gmsle_true)'
            include $(LIB_GMSLE_PATH)/lib/gmsle_strip/gmsle_strip_grep.mk
            gmsle_strip = $(call gmsle_strip_grep,$(1))
        else
            $(call __gmsle_warning,Loading the 'awk' implementation as a fallback.)
            include $(LIB_GMSLE_PATH)/lib/gmsle_strip/gmsle_strip_awk.mk
            gmsle_strip = $(call gmsle_strip_awk,$(1))
        endif
    else ifeq '$(GMSLE_STRIP_PREFER)' '$(GMSLE_PREFER_AWK)'
        include $(LIB_GMSLE_PATH)/lib/gmsle_strip/gmsle_strip_awk.mk
        gmsle_strip = $(call gmsle_strip_awk,$(1))
    else ifeq '$(GMSLE_STRIP_PREFER)' '$(GMSLE_PREFER_SED)'
        include $(LIB_GMSLE_PATH)/lib/gmsle_strip/gmsle_strip_sed.mk
        gmsle_strip = $(call gmsle_strip_sed,$(1))
    else ifeq '$(GMSLE_STRIP_PREFER)' '$(GMSLE_PREFER_GREP)'
        include $(LIB_GMSLE_PATH)/lib/gmsle_strip/gmsle_strip_grep.mk
        gmsle_strip = $(call gmsle_strip_grep,$(1))
    else
        ifneq '$(GMSLE_STRIP_PREFER)' '$(GMSLE_PREFER_GUILE)'
            $(call __gmsle_include_ifndef,__gmsle_warning,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_warning.mk)
            $(call __gmsle_warning,The variable 'GMSLE_STRIP_PREFER' has an invalid value.)
            $(call __gmsle_warning,The guile version of 'gmsle_strip' will be loaded.)
        endif
        $(call __gmsle_include_ifndef,__gmsle_has_guile,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_has_guile.mk)
        ifeq '$(__gmsle_has_guile)' '$(gmsle_true)'
            include $(LIB_GMSLE_PATH)/lib/gmsle_strip/gmsle_strip_guile.mk
            gmsle_strip = $(call gmsle_strip_guile,$(1))
        else
            ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
                $(call __gmsle_include_ifndef,gmsle_command,$(LIB_GMSLE_PATH)/lib/gmsle_command/GNUmakefile)
            endif
            ifeq '$(call gmsle_command,awk)' '$(gmsle_true)'
                include $(LIB_GMSLE_PATH)/lib/gmsle_strip/gmsle_strip_awk.mk
                gmsle_strip = $(call gmsle_strip_awk,$(1))
            else ifeq '$(call gmsle_command,sed)' '$(gmsle_true)'
                include $(LIB_GMSLE_PATH)/lib/gmsle_strip/gmsle_strip_sed.mk
                gmsle_strip = $(call gmsle_strip_sed,$(1))
            else ifeq '$(call gmsle_command,grep)' '$(gmsle_true)'
                include $(LIB_GMSLE_PATH)/lib/gmsle_strip/gmsle_strip_grep.mk
                gmsle_strip = $(call gmsle_strip_grep,$(1))
            else
                include $(LIB_GMSLE_PATH)/lib/gmsle_strip/gmsle_strip_awk.mk
                gmsle_strip = $(call gmsle_strip_awk,$(1))
            endif
        endif
    endif
endif #gmsle_strip
