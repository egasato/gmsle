#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

# Include all the components

ifeq '$(GMSLE_FALSE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
    include $(LIB_GMSLE_PATH)/lib/gmsle_false/GNUmakefile
endif

ifeq '$(GMSLE_TRUE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
    include $(LIB_GMSLE_PATH)/lib/gmsle_true/GNUmakefile
endif
