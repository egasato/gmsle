#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

# Include the environment variables and set the library location
LIB_GMSLE_PATH := ..
LIB_GMSLE_FILE := GNUmakefile

# Include the configuration
include $(LIB_GMSLE_PATH)/config.mk

# Include the internal feature checks
include $(LIB_GMSLE_PATH)/test/lib/internal/GNUmakefile

# Include the tests, grouped by implementation type

ifeq '$(GMSLE_NO_TEST_NATIVE)' ''
    test_type := native
    include $(LIB_GMSLE_PATH)/test/lib/GNUmakefile
endif

ifeq '$(GMSLE_NO_TEST_MAKE)' ''
    test_type := make
    include $(LIB_GMSLE_PATH)/test/lib/GNUmakefile
endif

ifeq '$(GMSLE_NO_TEST_GUILE)' ''
    test_type := guile
    include $(LIB_GMSLE_PATH)/test/lib/GNUmakefile
endif

ifeq '$(GMSLE_NO_TEST_SHELL)' ''
    test_type := shell
    include $(LIB_GMSLE_PATH)/test/lib/GNUmakefile
endif

ifeq '$(GMSLE_NO_TEST_AWK)' ''
    test_type := awk
    include $(LIB_GMSLE_PATH)/test/lib/GNUmakefile
endif

ifeq '$(GMSLE_NO_TEST_SED)' ''
    test_type := sed
    include $(LIB_GMSLE_PATH)/test/lib/GNUmakefile
endif

ifeq '$(GMSLE_NO_TEST_GREP)' ''
    test_type := grep
    include $(LIB_GMSLE_PATH)/test/lib/GNUmakefile
endif

## Create a phony target
.PHONY: test
test:
	@#noop
