#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

# Load the dependencies
include $(LIB_GMSLE_PATH)/lib/$(test_name)/$(test_name)_$(test_type).mk

# Test the variable
test_out := $($(test_name)_$(test_type))

# Print the result
ifneq '$(test_out)' ''
    $(warning The implementation of '$(test_name)_$(test_type)' is wrong.)
    $(info Expected: '')
    $(info Output:   '$(test_out)')
endif
