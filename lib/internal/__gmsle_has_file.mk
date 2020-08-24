#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

# Include guard to avoid double inclusion
ifndef __gmsle_has_file

    # Make sure a minimum version is being used
    ifndef __gmsle_include_ifndef
        include $(LIB_GMSLE_PATH)/lib/internal/__gmsle_include_ifndef.mk
    endif
    $(call __gmsle_include_ifndef,__gmsle_semver_be_3_99_90,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_semver_be_3_99_90.mk)
    $(call __gmsle_include_ifndef,__gmsle_semver_be_4_1_90,$(LIB_GMSLE_PATH)/lib/internal/__gmsle_semver_be_4_1_90.mk)

    ifneq '$(__gmsle_semver_be_3_99_90)' ''
        ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
            $(call __gmsle_include_ifndef,gmsle_true,$(LIB_GMSLE_PATH)/lib/gmsle_true/GNUmakefile)
        endif
        __gmsle_has_file_write := $(gmsle_true)
        __gmsle_has_file := $(gmsle_true)
    else
        ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
            $(call __gmsle_include_ifndef,gmsle_false,$(LIB_GMSLE_PATH)/lib/gmsle_false/GNUmakefile)
        endif
        __gmsle_has_file_write := $(gmsle_false)
    endif

    ifneq '$(__gmsle_semver_be_4_1_90)' ''
        __gmsle_has_file_read := $(file < $(LIB_GMSLE_PATH)/lib/internal/__gmsle_has_file.read)
        ifneq '$(__gmsle_has_file_read)' ''
            ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
                $(call __gmsle_include_ifndef,gmsle_true,$(LIB_GMSLE_PATH)/lib/gmsle_true/GNUmakefile)
            endif
            __gmsle_has_file_read := $(gmsle_true)
            __gmsle_has_file := $(gmsle_true)
        else
            ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
                $(call __gmsle_include_ifndef,gmsle_false,$(LIB_GMSLE_PATH)/lib/gmsle_false/GNUmakefile)
            endif
            __gmsle_has_file := $(gmsle_false)
        endif
    else
        ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
            $(call __gmsle_include_ifndef,gmsle_false,$(LIB_GMSLE_PATH)/lib/gmsle_false/GNUmakefile)
        endif
        __gmsle_has_file_read := $(gmsle_false)
    endif

endif #__gmsle_has_file
