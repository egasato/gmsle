#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Make Implementation

# Load the dependencies
ifeq '$(GMSLE_INCLUDE)' '$(GMSLE_INCLUDE_AUTOMATIC)'
    ifndef __gmsle_include_ifndef
        include $(LIB_GMSLE_PATH)/lib/internal/__gmsle_include_ifndef.mk
    endif
    $(call __gmsle_include_ifndef,gmsle_basename,$(LIB_GMSLE_PATH)/lib/gmsle_basename/GNUmakefile)
    $(call __gmsle_include_ifndef,gmsle_if,$(LIB_GMSLE_PATH)/lib/gmsle_basename/GNUmakefile)
endif

## Returns the name of a LibreOffice text document to PDF conversion target:
## - 1: The original 1st argument of 'gmsle_target_odt2pdf'.
## - 2: The original 2nd argument of 'gmsle_target_odt2pdf'.
gmsle_target_odt2pdf_name = $(call gmsle_if,$(2),$(2),$(call gmsle_basename,$(1)).pdf)
