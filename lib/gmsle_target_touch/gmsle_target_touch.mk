#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Make Implementation

# Load the dependencies
ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
    ifndef __gmsle_include_ifndef
        include $(LIB_GMSLE_PATH)/lib/internal/__gmsle_include_ifndef.mk
    endif
    $(call __gmsle_include_ifndef,gmsle_target_clean,$(LIB_GMSLE_PATH)/lib/gmsle_target_clean/GNUmakefile)
endif

## Creates a target that touches a path:
## - 1: The path.
define gmsle_target_touch

# Create the cleaning target
$(call gmsle_target_touch_name,$(1)): $(call gmsle_target_touch_deps,$(1))
	$(GMSLE_TOUCH) $$@

# Create a cleaning target if necessary
ifneq '$(GMSLE_TARGET_TOUCH_AUTOCLEAN)' ''
$(call gmsle_target_clean,$(call gmsle_target_touch_name,$(1)))
endif

endef
