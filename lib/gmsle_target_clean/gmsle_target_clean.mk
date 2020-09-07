#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Make Implementation

# Load the dependencies
ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
    ifndef __gmsle_include_ifndef
        include $(LIB_GMSLE_PATH)/lib/internal/__gmsle_include_ifndef.mk
    endif
    $(call __gmsle_include_ifndef,gmsle_strip,$(LIB_GMSLE_PATH)/lib/gmsle_strip/GNUmakefile)
endif

## Creates a target that removes a path:
## - 1: The path.
define gmsle_target_clean

# Apply the special targets
$(call gmsle_target_clean_dependee,$(1),clean)
$(call gmsle_target_clean_dependee,$(1),.PHONY)
$(call gmsle_target_clean_dependee,$(1),.ONESHELL)
$(call gmsle_target_clean_dependee,$(1),.SILENT)

# Define the target
$(call gmsle_target_clean_name,$(1)): $(call gmsle_target_clean_deps,$(1))
	if $(GMSLE_TEST) -L $(1) || $(GMSLE_TEST) -e $(1); then
		if $(GMSLE_TEST) -d $(1); then
			{
				$(GMSLE_RMDIR) $(1) 2> /dev/null && $(GMSLE_ECHO) "$(GMSLE_RMDIR) $(call gmsle_strip,$(1))"
			} || {
				$(GMSLE_ECHO) "$(GMSLE_RM) -rf $(call gmsle_strip,$(1))" && $(GMSLE_RM) -rf $(1)
			}
		else
			$(GMSLE_ECHO) '$(GMSLE_RM) $(call gmsle_strip,$(1))'
			$(GMSLE_RM) $(1)
		fi
ifneq '$(GMSLE_TARGET_CLEAN_UPTODATE)' ''
	else
		$(GMSLE_ECHO) "$(MAKE): '$$@' is up to date."
endif
	fi

endef
