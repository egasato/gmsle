#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## Smart Loader

ifndef gmsle_undefine
    ifndef __gmsle_include_ifndef
        include $(LIB_GMSLE_PATH)/lib/internal/__gmsle_include_ifndef.mk
    endif
    $(call __gmsle_include_ifndef,__gmsle_has_eval,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_has_eval.mk)
    ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
        $(call __gmsle_include_ifndef,gmsle_true,$(LIB_GMSLE_PATH)/lib/gmsle_true/GNUmakefile)
    endif
    ifeq '$(__gmsle_has_eval)' '$(gmsle_true)'
        $(call __gmsle_include_ifndef,__gmsle_has_undefine,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_has_undefine.mk)
        ifeq '$(__gmsle_has_undefine)' '$(gmsle_true)'
            include $(LIB_GMSLE_PATH)/lib/gmsle_undefine/gmsle_undefine_native.mk
        else
            $(call __gmsle_include_ifndef,__gmsle_warning,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_warning.mk)
            $(call __gmsle_warning,The directive 'undefine' is not supported, therefore 'gmsle_undefine' cannot be implemented.)
            include $(LIB_GMSLE_PATH)/lib/gmsle_undefine/gmsle_undefine_error.mk
        endif
    else
        $(call __gmsle_include_ifndef,__gmsle_warning,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_warning.mk)
        $(call __gmsle_warning,The directive 'eval' is not supported, therefore 'gmsle_undefine' cannot be implemented.)
        include $(LIB_GMSLE_PATH)/lib/gmsle_undefine/gmsle_undefine_error.mk
    endif
endif #gmsle_undefine
