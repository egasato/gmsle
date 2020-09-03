#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

# Load the dependencies
include $(LIB_GMSLE_PATH)/lib/gmsle_true/GNUmakefile
include $(LIB_GMSLE_PATH)/lib/gmsle_false/GNUmakefile
include $(LIB_GMSLE_PATH)/lib/gmsle_findstring/GNUmakefile
include $(LIB_GMSLE_PATH)/lib/$(test_name)/$(test_name)_$(test_type).mk

# Test the variable
test_in1 := ./GNUmakefile
test_exp := ! '.' in Output
test_out := $(call $(test_name)_$(test_type),$(test_in1))

# Print the result
ifneq '$(call gmsle_findstring,.,$(test_out))' ''
    $(warning The implementation of '$(test_name)_$(test_type)' is wrong.)
    $(info Input:    '$(test_in1)')
    $(info Expected: $(test_exp))
    $(info Output:   '$(test_out)')
endif
