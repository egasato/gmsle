#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

# Load the dependencies
include $(LIB_GMSLE_PATH)/enums.mk

## Define the default configuration

GMSLE_INCLUDE  ?= $(GMSLE_INCLUDE_AUTOMATIC)
GMSLE_WARNINGS ?= $(GMSLE_WARNINGS_YES)
