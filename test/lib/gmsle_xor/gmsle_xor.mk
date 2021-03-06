#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

# Load the dependencies
include $(LIB_GMSLE_PATH)/lib/gmsle_true/GNUmakefile
include $(LIB_GMSLE_PATH)/lib/gmsle_false/GNUmakefile
include $(LIB_GMSLE_PATH)/lib/$(test_name)/$(test_name)_$(test_type).mk

# Test the variable
test_in1 := $(shell echo '	GNU Make	')
test_in2 := $(shell echo '	BSD Make	')
test_exp :=
test_out := $(call $(test_name)_$(test_type),$(test_in1),$(test_in2))

# Print the result
ifneq '$(test_out)' '$(test_exp)'
    $(warning The implementation of '$(test_name)_$(test_type)' is wrong.)
    $(info Input:    '$(test_in1)', '$(test_in2)')
    $(info Expected: '$(test_exp)')
    $(info Output:   '$(test_out)')
endif

# Test the variable
test_in1 :=
test_in2 := BSD Make
test_exp := $(test_in2)
test_out := $(call $(test_name)_$(test_type),$(test_in1),$(test_in2))

# Print the result
ifneq '$(test_out)' '$(test_exp)'
    $(warning The implementation of '$(test_name)_$(test_type)' is wrong.)
    $(info Input:    '$(test_in1)', '$(test_in2)')
    $(info Expected: '$(test_exp)')
    $(info Output:   '$(test_out)')
endif

# Test the variable
test_in1 := GNU Make
test_in2 :=
test_exp := $(test_in1)
test_out := $(call $(test_name)_$(test_type),$(test_in1),$(test_in2))

# Print the result
ifneq '$(test_out)' '$(test_exp)'
    $(warning The implementation of '$(test_name)_$(test_type)' is wrong.)
    $(info Input:    '$(test_in1)', '$(test_in2)')
    $(info Expected: '$(test_exp)')
    $(info Output:   '$(test_out)')
endif

# Test the variable
test_in1 :=
test_in2 :=
test_exp :=
test_out := $(call $(test_name)_$(test_type),$(test_in1),$(test_in2))

# Print the result
ifneq '$(test_out)' '$(test_exp)'
    $(warning The implementation of '$(test_name)_$(test_type)' is wrong.)
    $(info Input:    '$(test_in1)', '$(test_in2)')
    $(info Expected: '$(test_exp)')
    $(info Output:   '$(test_out)')
endif
