#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

# Include the correct test
test_name := gmsle_semver
ifeq '$(test_type)' 'guile'
    include $(LIB_GMSLE_PATH)/test/lib/$(test_name)/$(test_name)_be.mk
    include $(LIB_GMSLE_PATH)/test/lib/$(test_name)/$(test_name)_bt.mk
    include $(LIB_GMSLE_PATH)/test/lib/$(test_name)/$(test_name)_le.mk
    include $(LIB_GMSLE_PATH)/test/lib/$(test_name)/$(test_name)_lt.mk
    include $(LIB_GMSLE_PATH)/test/lib/$(test_name)/$(test_name)_eq.mk
    include $(LIB_GMSLE_PATH)/test/lib/$(test_name)/$(test_name)_ne.mk
else ifeq '$(test_type)' 'shell'
    include $(LIB_GMSLE_PATH)/test/lib/$(test_name)/$(test_name)_be.mk
    include $(LIB_GMSLE_PATH)/test/lib/$(test_name)/$(test_name)_bt.mk
    include $(LIB_GMSLE_PATH)/test/lib/$(test_name)/$(test_name)_le.mk
    include $(LIB_GMSLE_PATH)/test/lib/$(test_name)/$(test_name)_lt.mk
    include $(LIB_GMSLE_PATH)/test/lib/$(test_name)/$(test_name)_eq.mk
    include $(LIB_GMSLE_PATH)/test/lib/$(test_name)/$(test_name)_ne.mk
endif
