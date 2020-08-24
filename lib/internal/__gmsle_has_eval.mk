#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

# Include guard to avoid double inclusion
ifndef __gmsle_has_eval

    # Make sure a minimum version is being used
    ifndef __gmsle_include_ifndef
        include $(LIB_GMSLE_PATH)/lib/internal/__gmsle_include_ifndef.mk
    endif
    $(call __gmsle_include_ifndef,__gmsle_semver_be_3_80,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_semver_be_3_80.mk)
    ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
        $(call __gmsle_include_ifndef,gmsle_false,$(LIB_GMSLE_PATH)/lib/gmsle_false/GNUmakefile)
    endif

    ifneq '$(__gmsle_semver_be_3_80)' ''
        ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
            $(call __gmsle_include_ifndef,gmsle_true,$(LIB_GMSLE_PATH)/lib/gmsle_true/GNUmakefile)
        endif
        __gmsle_has_eval := $(gmsle_false)
        __gmsle_ignore := $(eval __gmsle_has_eval := $$(gmsle_true))
    else
        __gmsle_has_eval := $(gmsle_false)
    endif

endif #__gmsle_has_eval
