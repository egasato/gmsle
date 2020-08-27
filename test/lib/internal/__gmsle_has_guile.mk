#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

# Set some useful variables
test_name = guile
test_var  = __gmsle_has_$(test_name)

# Include the library check
include $(LIB_GMSLE_PATH)/lib/internal/__gmsle_has_$(test_name).mk

# Print a warning if not supported
ifeq '$($(test_var))' ''
    $(info The feature '$(test_name)' is not available, as defined by '$(test_var)'.)
endif
