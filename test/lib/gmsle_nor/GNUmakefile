#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

# Include the correct test
test_name := gmsle_nor
ifeq '$(test_type)' 'make'
    include $(LIB_GMSLE_PATH)/test/lib/$(test_name)/$(test_name).mk
else ifeq '$(test_type)' 'guile'
    include $(LIB_GMSLE_PATH)/test/lib/$(test_name)/$(test_name).mk
else ifeq '$(test_type)' 'shell'
    include $(LIB_GMSLE_PATH)/test/lib/$(test_name)/$(test_name).mk
endif
