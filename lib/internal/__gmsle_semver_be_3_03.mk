#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

# Include guard to avoid double inclusion
ifndef __gmsle_semver_be_3_03

    # Make sure a minimum version is being used
    ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
        include $(LIB_GMSLE_PATH)/lib/gmsle_semver/GNUmakefile
    endif
    __gmsle_semver_be_3_03 := $(call gmsle_semver,$(MAKE_VERSION),>=,3.03)

endif #__gmsle_semver_be_3_03
