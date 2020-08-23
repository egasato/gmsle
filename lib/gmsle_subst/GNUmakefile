#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## Smart loader

ifndef gmsle_subst
    ifndef __gmsle_include_ifndef
        include $(LIB_GMSLE_PATH)/lib/internal/__gmsle_include_ifndef.mk
    endif
    $(call __gmsle_include_ifndef,__gmsle_has_subst,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_has_subst.mk)
    ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
        $(call __gmsle_include_ifndef,gmsle_true,$(LIB_GMSLE_PATH)/lib/gmsle_true/GNUmakefile)
    endif
    ifeq '$(__gmsle_has_subst)' '$(gmsle_true)'
        include $(LIB_GMSLE_PATH)/lib/gmsle_subst/gmsle_subst_native.mk
        gmsle_subst = $(call gmsle_subst_native,$(1),$(2),$(3))
    else ifeq '$(GMSLE_SUBST_PREFER)' '$(GMSLE_PREFER_SHELL)'
        $(call __gmsle_include_ifndef,__gmsle_warning,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_warning.mk)
        $(call __gmsle_warning,The variable 'GMSLE_SUBST_PREFER' has an invalid value.)
        $(call __gmsle_warning,A specific shell version of 'gmsle_subst' will be loaded.)
        ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
            $(call __gmsle_include_ifndef,gmsle_command,$(LIB_GMSLE_PATH)/lib/gmsle_command/GNUmakefile)
        endif
        ifeq '$(call gmsle_command,awk)' '$(gmsle_true)'
            include $(LIB_GMSLE_PATH)/lib/gmsle_subst/gmsle_subst_awk.mk
            gmsle_subst = $(call gmsle_subst_awk,$(1),$(2),$(3))
        else ifeq '$(call gmsle_command,sed)' '$(gmsle_true)'
            include $(LIB_GMSLE_PATH)/lib/gmsle_subst/gmsle_subst_sed.mk
            gmsle_subst = $(call gmsle_subst_sed,$(1),$(2),$(3))
        else
            $(call __gmsle_warning,Loading the 'awk' implementation as a fallback.)
            include $(LIB_GMSLE_PATH)/lib/gmsle_subst/gmsle_subst_awk.mk
            gmsle_subst = $(call gmsle_subst_awk,$(1),$(2),$(3))
        endif
    else ifeq '$(GMSLE_SUBST_PREFER)' '$(GMSLE_PREFER_AWK)'
        include $(LIB_GMSLE_PATH)/lib/gmsle_subst/gmsle_subst_awk.mk
        gmsle_subst = $(call gmsle_subst_awk,$(1),$(2),$(3))
    else ifeq '$(GMSLE_SUBST_PREFER)' '$(GMSLE_PREFER_SED)'
        include $(LIB_GMSLE_PATH)/lib/gmsle_subst/gmsle_subst_sed.mk
        gmsle_subst = $(call gmsle_subst_sed,$(1),$(2),$(3))
    else
        ifneq '$(GMSLE_SUBST_PREFER)' '$(GMSLE_PREFER_GUILE)'
            $(call __gmsle_include_ifndef,__gmsle_warning,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_warning.mk)
            $(call __gmsle_warning,The variable 'GMSLE_SUBST_PREFER' has an invalid value.)
            $(call __gmsle_warning,The guile version of 'gmsle_subst' will be loaded.)
        endif
        $(call __gmsle_include_ifndef,__gmsle_has_guile,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_has_guile.mk)
        ifeq '$(__gmsle_has_guile)' '$(gmsle_true)'
            include $(LIB_GMSLE_PATH)/lib/gmsle_subst/gmsle_subst_guile.mk
            gmsle_subst = $(call gmsle_subst_guile,$(1),$(2),$(3))
        else
            ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
                $(call __gmsle_include_ifndef,gmsle_command,$(LIB_GMSLE_PATH)/lib/gmsle_command/GNUmakefile)
            endif
            ifeq '$(call gmsle_command,awk)' '$(gmsle_true)'
                include $(LIB_GMSLE_PATH)/lib/gmsle_subst/gmsle_subst_awk.mk
                gmsle_subst = $(call gmsle_subst_awk,$(1),$(2),$(3))
            else ifeq '$(call gmsle_command,sed)' '$(gmsle_true)'
                include $(LIB_GMSLE_PATH)/lib/gmsle_subst/gmsle_subst_sed.mk
                gmsle_subst = $(call gmsle_subst_sed,$(1),$(2),$(3))
            else
                include $(LIB_GMSLE_PATH)/lib/gmsle_subst/gmsle_subst_awk.mk
                gmsle_subst = $(call gmsle_subst_awk,$(1),$(2),$(3))
            endif
        endif
    endif
endif #gmsle_subst
