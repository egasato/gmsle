#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## Smart loader

ifndef gmsle_eval
    ifndef __gmsle_include_ifndef
        include $(LIB_GMSLE_PATH)/lib/internal/__gmsle_include_ifndef.mk
    endif
    $(call __gmsle_include_ifndef,__gmsle_has_eval,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_has_eval.mk)
    ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
        $(call __gmsle_include_ifndef,gmsle_true,$(LIB_GMSLE_PATH)/lib/gmsle_true/GNUmakefile)
    endif
    ifeq '$(__gmsle_has_eval)' '$(gmsle_true)'
        include $(LIB_GMSLE_PATH)/lib/gmsle_eval/gmsle_eval_native.mk
        gmsle_eval = $(call gmsle_eval_native,$(1))
    else
        $(call __gmsle_include_ifndef,__gmsle_warning,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_warning.mk)
        $(call __gmsle_warning,The variable '__gmsle_has_eval' is not true.)
        $(call __gmsle_warning,This means the function 'gmsle_eval' cannot be implemented and will print an error.)
        gmsle_eval = $(error This make implementation can't evaluate arbitrary Makefile code.)
    endif
endif #gmsle_eval
