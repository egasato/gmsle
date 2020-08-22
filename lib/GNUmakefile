#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

# Include all the components

ifeq '$(GMSLE_AND_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
    include $(LIB_GMSLE_PATH)/lib/gmsle_and/GNUmakefile
endif

ifeq '$(GMSLE_FALSE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
    include $(LIB_GMSLE_PATH)/lib/gmsle_false/GNUmakefile
endif

ifeq '$(GMSLE_IF_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
    include $(LIB_GMSLE_PATH)/lib/gmsle_if/GNUmakefile
endif

ifeq '$(GMSLE_NOT_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
    include $(LIB_GMSLE_PATH)/lib/gmsle_not/GNUmakefile
endif

ifeq '$(GMSLE_OR_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
    include $(LIB_GMSLE_PATH)/lib/gmsle_or/GNUmakefile
endif

ifeq '$(GMSLE_SEMVER_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
    include $(LIB_GMSLE_PATH)/lib/gmsle_semver/GNUmakefile
endif

ifeq '$(GMSLE_TRUE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
    include $(LIB_GMSLE_PATH)/lib/gmsle_true/GNUmakefile
endif

ifeq '$(GMSLE_XOR_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
    include $(LIB_GMSLE_PATH)/lib/gmsle_xor/GNUmakefile
endif
