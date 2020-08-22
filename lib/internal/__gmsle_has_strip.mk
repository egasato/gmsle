#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

# Include guard to avoid double inclusion
ifndef __gmsle_has_strip

    # Make sure a minimum version is being used
    ifndef __gmsle_include_ifndef
        include $(LIB_GMSLE_PATH)/lib/internal/__gmsle_include_ifndef.mk
    endif
    $(call __gmsle_include_ifndef,__gmsle_semver_be_1,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_semver_be_1.mk)

    ifneq '$(__gmsle_semver_be_1)' ''
        define __gmsle_has_strip
            a b c	
        endef
        __gmsle_has_strip := $(strip $(__gmsle_has_strip))
        ifeq '$(__gmsle_has_strip)' 'a b c'
            ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
                $(call __gmsle_include_ifndef,gmsle_true,$(LIB_GMSLE_PATH)/lib/gmsle_true/GNUmakefile)
            endif
            __gmsle_has_strip := $(gmsle_true)
        else
            ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
                $(call __gmsle_include_ifndef,gmsle_false,$(LIB_GMSLE_PATH)/lib/gmsle_false/GNUmakefile)
            endif
            __gmsle_has_strip := $(gmsle_false)
        endif
    else
        ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
            $(call __gmsle_include_ifndef,gmsle_false,$(LIB_GMSLE_PATH)/lib/gmsle_false/GNUmakefile)
        endif
        __gmsle_has_strip := $(gmsle_false)
    endif

endif #__gmsle_has_strip
