#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

# Load the dependencies
include $(LIB_GMSLE_PATH)/lib/$(test_name)/$(test_name)_$(test_type).mk

# Test the variable
test_in1 := $(shell echo '	2	')
test_in2 := $(shell echo '	3	')
test_in3 := $(shell echo '	foo bar baz	')
test_exp := bar baz
test_out := $(call $(test_name)_$(test_type),$(test_in1),$(test_in2),$(test_in3))

# Print the result
ifneq '$(test_out)' '$(test_exp)'
    $(warning The implementation of '$(test_name)_$(test_type)' is wrong.)
    $(info Input:    '$(test_in1)', '$(test_in2)', '$(test_in3)')
    $(info Expected: '$(test_exp)')
    $(info Output:   '$(test_out)')
endif
