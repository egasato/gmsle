#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## Smart loader

ifndef gmsle_nand
    ifeq '$(GMSLE_NAND_PREFER)' '$(GMSLE_PREFER_SHELL)'
        include $(LIB_GMSLE_PATH)/lib/gmsle_nand/gmsle_nand_shell.mk
        gmsle_nand = $(call gmsle_nand_shell,$(1),$(2))
    else ifeq '$(GMSLE_NAND_PREFER)' '$(GMSLE_PREFER_GUILE)'
        ifndef __gmsle_include_ifndef
            include $(LIB_GMSLE_PATH)/lib/internal/__gmsle_include_ifndef.mk
        endif
        $(call __gmsle_include_ifndef,__gmsle_has_guile,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_has_guile.mk)
        ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
            $(call __gmsle_include_ifndef,gmsle_true,$(LIB_GMSLE_PATH)/lib/gmsle_true/GNUmakefile)
        endif
        ifeq '$(__gmsle_has_guile)' '$(gmsle_true)'
            include $(LIB_GMSLE_PATH)/lib/gmsle_nand/gmsle_nand_guile.mk
            gmsle_nand = $(call gmsle_nand_guile,$(1),$(2))
        else
            include $(LIB_GMSLE_PATH)/lib/gmsle_nand/gmsle_nand_make.mk
            gmsle_nand = $(call gmsle_nand_make,$(1),$(2))
        endif
    else
        ifneq '$(GMSLE_NAND_PREFER)' '$(GMSLE_PREFER_MAKE)'
            $(call __gmsle_include_ifndef,__gmsle_warning,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_warning.mk)
            $(call __gmsle_warning,The variable 'GMSLE_NAND_PREFER' has an invalid value.)
            $(call __gmsle_warning,The make version of 'gmsle_nand' will be loaded.)
        endif
        include $(LIB_GMSLE_PATH)/lib/gmsle_nand/gmsle_nand_make.mk
        gmsle_nand = $(call gmsle_nand_make,$(1),$(2))
    endif
endif #gmsle_nand
