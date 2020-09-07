#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Make Implementation

# Load the dependencies
ifneq '$(GMSLE_TARGET_GO_BUILD_AUTOCLEAN)' ''
    ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
        ifndef __gmsle_include_ifndef
            include $(LIB_GMSLE_PATH)/lib/internal/__gmsle_include_ifndef.mk
        endif
        $(call __gmsle_include_ifndef,gmsle_target_clean,$(LIB_GMSLE_PATH)/lib/gmsle_target_clean/GNUmakefile)
    endif
endif

## Creates a target that builds a Go program:
## - 1: The source file.
## - 2: The output name.
define gmsle_target_go_build

# Define the target
$(call gmsle_target_go_build_name,$(1),$(2)): $(call gmsle_target_go_build_deps,$(1),$(2))
ifeq '$(GMSLE_GOFLAGS)' ''
    ifeq '$(2)' ''
	$(GMSLE_GO) build $$<
    else
	$(GMSLE_GO) build -o $(2) $$<
    endif
else
    ifeq '$(2)' ''
	$(GMSLE_GO) build $(GMSLE_GOFLAGS) $$<
    else
	$(GMSLE_GO) build -o $(2) $(GMSLE_GOFLAGS) $$<
    endif
endif

# Create a cleaning target if necessary
ifneq '$(GMSLE_TARGET_GO_BUILD_AUTOCLEAN)' ''
$(call gmsle_target_clean,$(call gmsle_target_go_build_name,$(1),$(2)))
endif

endef
