#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Make Implementation

# Load the dependencies
ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
    ifndef __gmsle_include_ifndef
        include $(LIB_GMSLE_PATH)/lib/internal/__gmsle_include_ifndef.mk
    endif
    $(call __gmsle_include_ifndef,gmsle_command,$(LIB_GMSLE_PATH)/lib/gmsle_command/GNUmakefile)
    $(call __gmsle_include_ifndef,gmsle_dir,$(LIB_GMSLE_PATH)/lib/gmsle_dir/GNUmakefile)
    $(call __gmsle_include_ifndef,gmsle_target_clean,$(LIB_GMSLE_PATH)/lib/gmsle_target_clean/GNUmakefile)
endif

# Define a helper variable
ifndef __gmsle_has_command_realpath
__gmsle_has_command_realpath := $(call gmsle_command,$(GMSLE_REALPATH))
endif #__gmsle_has_command_realpath

## Creates a target that creates a symlink or copies the file (if 'ln' fails):
## - 1: The target.
## - 2: The link path.
define gmsle_target_ln

# Apply the special targets and dependencies
$(call gmsle_target_ln_dependee,$(1),$(2),.ONESHELL)
$(call gmsle_target_ln_dependee,$(1),$(2),.SILENT)

# Define the target
$(call gmsle_target_ln_name,$(1),$(2)): $(call gmsle_target_ln_deps,$(1),$(2))
	if $(GMSLE_TEST) -e $$@; then
		if $(GMSLE_TEST) -L $$@; then
ifneq '$(__gmsle_has_command_realpath)' ''
			if $(GMSLE_TEST) $$$$($(GMSLE_REALPATH) -m $$@) = $$<; then
else
			if $(GMSLE_TEST) $$$$($(GMSLE_READLINK) $$@) = $$<; then
endif
				$(GMSLE_ECHO) "$(MAKE): '$$@' is up to date."
			else
				if $(GMSLE_LN) -s -f $$< $$@; then
ifneq '$(GMSLE_TARGET_LN_ECHO)' ''
					$(GMSLE_ECHO) '$(GMSLE_LN) -s $$< $$@'
else
					:
endif
				else
ifneq '$(GMSLE_TARGET_LN_ECHO)' ''
					$(GMSLE_ECHO) '$(GMSLE_CP) $$< $$@'
endif
					$(GMSLE_CP) $$< $$@
				fi
			fi
		else
			if $(GMSLE_CMP) -s $$@ $$<; then
				$(GMSLE_TOUCH) $$@
ifneq '$(GMSLE_TARGET_LN_UPTODATE)' ''
				$(GMSLE_ECHO) "$(MAKE): '$$@' is up to date."
endif
			else
ifneq '$(GMSLE_TARGET_LN_OVERRIDE)' ''
				if $(GMSLE_LN) -s -f $$< $$@ 2> /dev/null; then
ifneq '$(GMSLE_TARGET_LN_ECHO)' ''
					$(GMSLE_ECHO) '$(GMSLE_LN) -s $$< $$@'
else
					:
endif
				else
ifneq '$(GMSLE_TARGET_LN_ECHO)' ''
					$(GMSLE_ECHO) '$(GMSLE_CP) $$< $$@'
endif
					$(GMSLE_CP) $$< $$@
				fi
else
				$(GMSLE_ECHO) "Error: '$$@' is different from '$$<' but I can't decide what to do." && exit 1
endif
			fi
		fi
	else
		if $(GMSLE_LN) -s -f $$< $$@; then
ifneq '$(GMSLE_TARGET_LN_ECHO)' ''
			$(GMSLE_ECHO) '$(GMSLE_LN) -s $$< $$@'
else
			:
endif
		else
ifneq '$(GMSLE_TARGET_LN_ECHO)' ''
			$(GMSLE_ECHO) '$(GMSLE_CP) $$< $$@'
endif
			$(GMSLE_CP) $$< $$@
		fi
	fi

# Create a cleaning target if necessary
ifneq '$(GMSLE_TARGET_LN_AUTOCLEAN)' ''
$(call gmsle_target_clean,$(call gmsle_target_ln_name,$(1),$(2)))
endif

endef
