#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

# Load the dependencies
include $(LIB_GMSLE_PATH)/lib/$(test_name)/$(test_name)_$(test_type).mk

# These tests must fail

# Test the variable
test_in1 := $(shell echo '	2	')
test_in2 := $(shell echo '	<=	')
test_in3 := $(shell echo '	01	')
test_exp :=
test_out := $(call $(test_name)_$(test_type),$(test_in1),$(test_in2),$(test_in3))

# Print the result
ifneq '$(test_out)' '$(test_exp)'
    $(warning The implementation of '$(test_name)_$(test_type)' is wrong.)
    $(info Input:    '$(test_in1)', '$(test_in2)', '$(test_in3)')
    $(info Expected: '$(test_exp)')
    $(info Output:   '$(test_out)')
endif

# Test the variable
test_in1 := $(shell echo '	2	')
test_in2 := $(shell echo '	<=	')
test_in3 := $(shell echo '	01.01	')
test_exp :=
test_out := $(call $(test_name)_$(test_type),$(test_in1),$(test_in2),$(test_in3))

# Print the result
ifneq '$(test_out)' '$(test_exp)'
    $(warning The implementation of '$(test_name)_$(test_type)' is wrong.)
    $(info Input:    '$(test_in1)', '$(test_in2)', '$(test_in3)')
    $(info Expected: '$(test_exp)')
    $(info Output:   '$(test_out)')
endif

# Test the variable
test_in1 := $(shell echo '	2.2	')
test_in2 := $(shell echo '	<=	')
test_in3 := $(shell echo '	02	')
test_exp :=
test_out := $(call $(test_name)_$(test_type),$(test_in1),$(test_in2),$(test_in3))

# Print the result
ifneq '$(test_out)' '$(test_exp)'
    $(warning The implementation of '$(test_name)_$(test_type)' is wrong.)
    $(info Input:    '$(test_in1)', '$(test_in2)', '$(test_in3)')
    $(info Expected: '$(test_exp)')
    $(info Output:   '$(test_out)')
endif

# Test the variable
test_in1 := $(shell echo '	2.2	')
test_in2 := $(shell echo '	<=	')
test_in3 := $(shell echo '	02.0.0	')
test_exp :=
test_out := $(call $(test_name)_$(test_type),$(test_in1),$(test_in2),$(test_in3))

# Print the result
ifneq '$(test_out)' '$(test_exp)'
    $(warning The implementation of '$(test_name)_$(test_type)' is wrong.)
    $(info Input:    '$(test_in1)', '$(test_in2)', '$(test_in3)')
    $(info Expected: '$(test_exp)')
    $(info Output:   '$(test_out)')
endif

# Test the variable
test_in1 := $(shell echo '	2.2	')
test_in2 := $(shell echo '	<=	')
test_in3 := $(shell echo '	02.0.02	')
test_exp :=
test_out := $(call $(test_name)_$(test_type),$(test_in1),$(test_in2),$(test_in3))

# Print the result
ifneq '$(test_out)' '$(test_exp)'
    $(warning The implementation of '$(test_name)_$(test_type)' is wrong.)
    $(info Input:    '$(test_in1)', '$(test_in2)', '$(test_in3)')
    $(info Expected: '$(test_exp)')
    $(info Output:   '$(test_out)')
endif

# These tests must pass

# Test the variable
test_in1 := $(shell echo '	1	')
test_in2 := $(shell echo '	<=	')
test_in3 := $(shell echo '	02	')
test_out := $(call $(test_name)_$(test_type),$(test_in1),$(test_in2),$(test_in3))

# Print the result
ifeq '$(test_out)' ''
    $(warning The implementation of '$(test_name)_$(test_type)' is wrong.)
    $(info Input:    '$(test_in1)', '$(test_in2)', '$(test_in3)')
    $(info Expected: ! '')
    $(info Output:   '$(test_out)')
endif

# Test the variable
test_in1 := $(shell echo '	1	')
test_in2 := $(shell echo '	<=	')
test_in3 := $(shell echo '	02.02	')
test_out := $(call $(test_name)_$(test_type),$(test_in1),$(test_in2),$(test_in3))

# Print the result
ifeq '$(test_out)' ''
    $(warning The implementation of '$(test_name)_$(test_type)' is wrong.)
    $(info Input:    '$(test_in1)', '$(test_in2)', '$(test_in3)')
    $(info Expected: ! '')
    $(info Output:   '$(test_out)')
endif

# Test the variable
test_in1 := $(shell echo '	2	')
test_in2 := $(shell echo '	<=	')
test_in3 := $(shell echo '	02	')
test_out := $(call $(test_name)_$(test_type),$(test_in1),$(test_in2),$(test_in3))

# Print the result
ifeq '$(test_out)' ''
    $(warning The implementation of '$(test_name)_$(test_type)' is wrong.)
    $(info Input:    '$(test_in1)', '$(test_in2)', '$(test_in3)')
    $(info Expected: ! '')
    $(info Output:   '$(test_out)')
endif

# Test the variable
test_in1 := $(shell echo '	2	')
test_in2 := $(shell echo '	<=	')
test_in3 := $(shell echo '	02.0	')
test_out := $(call $(test_name)_$(test_type),$(test_in1),$(test_in2),$(test_in3))

# Print the result
ifeq '$(test_out)' ''
    $(warning The implementation of '$(test_name)_$(test_type)' is wrong.)
    $(info Input:    '$(test_in1)', '$(test_in2)', '$(test_in3)')
    $(info Expected: ! '')
    $(info Output:   '$(test_out)')
endif

# Test the variable
test_in1 := $(shell echo '	2.0	')
test_in2 := $(shell echo '	<=	')
test_in3 := $(shell echo '	02	')
test_out := $(call $(test_name)_$(test_type),$(test_in1),$(test_in2),$(test_in3))

# Print the result
ifeq '$(test_out)' ''
    $(warning The implementation of '$(test_name)_$(test_type)' is wrong.)
    $(info Input:    '$(test_in1)', '$(test_in2)', '$(test_in3)')
    $(info Expected: ! '')
    $(info Output:   '$(test_out)')
endif

# Test the variable
test_in1 := $(shell echo '	2.0	')
test_in2 := $(shell echo '	<=	')
test_in3 := $(shell echo '	02.0	')
test_out := $(call $(test_name)_$(test_type),$(test_in1),$(test_in2),$(test_in3))

# Print the result
ifeq '$(test_out)' ''
    $(warning The implementation of '$(test_name)_$(test_type)' is wrong.)
    $(info Input:    '$(test_in1)', '$(test_in2)', '$(test_in3)')
    $(info Expected: ! '')
    $(info Output:   '$(test_out)')
endif

# Test the variable
test_in1 := $(shell echo '	2.0	')
test_in2 := $(shell echo '	<=	')
test_in3 := $(shell echo '	02.0.02	')
test_out := $(call $(test_name)_$(test_type),$(test_in1),$(test_in2),$(test_in3))

# Print the result
ifeq '$(test_out)' ''
    $(warning The implementation of '$(test_name)_$(test_type)' is wrong.)
    $(info Input:    '$(test_in1)', '$(test_in2)', '$(test_in3)')
    $(info Expected: ! '')
    $(info Output:   '$(test_out)')
endif
