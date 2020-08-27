#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

# Load the dependencies
include $(LIB_GMSLE_PATH)/lib/$(test_name)/$(test_name)_$(test_type).mk

# Test the variable
test_in1 := $(shell echo '	$(MAKE)	')
test_out := $(call $(test_name)_$(test_type),$(test_in1))

# Print the result
ifeq '$(test_out)' ''
    $(warning The implementation of '$(test_name)_$(test_type)' is wrong.)
    $(info Input:    '$(test_in1)')
    $(info Expected: ! '')
    $(info Output:   '')
endif
