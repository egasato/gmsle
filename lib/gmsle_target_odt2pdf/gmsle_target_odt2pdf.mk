#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Make Implementation

# Load the dependencies
ifneq '$(GMSLE_TARGET_odt2pdf_AUTOCLEAN)' ''
    ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
        ifndef __gmsle_include_ifndef
            include $(LIB_GMSLE_PATH)/lib/internal/__gmsle_include_ifndef.mk
        endif
        $(call __gmsle_include_ifndef,gmsle_command,$(LIB_GMSLE_PATH)/lib/gmsle_command/GNUmakefile)
        $(call __gmsle_include_ifndef,gmsle_target_clean,$(LIB_GMSLE_PATH)/lib/gmsle_target_clean/GNUmakefile)
    endif
endif

# Define a helper variable
ifndef __gmsle_has_command_unoconv
__gmsle_has_command_unoconv := $(call gmsle_command,$(GMSLE_UNOCONV))
endif #__gmsle_has_command_unoconv

## Creates a target that converts a LibreOffice text document to PDF:
## - 1: The source file.
## - 2: The output name.
define gmsle_target_odt2pdf

# Define the target
$(call gmsle_target_odt2pdf_name,$(1),$(2)): $(call gmsle_target_odt2pdf_deps,$(1),$(2))
    ifneq '$(__gmsle_has_command_unoconv)' ''
	$(GMSLE_UNOCONV) -M Author="$$$$(git config user.name)" -d document -f pdf -o $$@ $$<
    else
	$(GMSLE_LIBREOFFICE) --headless --convert-to pdf $$<
    endif

# Create a cleaning target if necessary
ifneq '$(GMSLE_TARGET_ODT2PDF_AUTOCLEAN)' ''
$(call gmsle_target_clean,$(call gmsle_target_odt2pdf_name,$(1),$(2)))
endif

endef
