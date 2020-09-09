#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Make Implementation

## Adds one or more dependency targets to an existing LibreOffice text
## document to PDF conversion target:
## - 1: The original 1st argument of 'gmsle_target_odt2pdf'.
## - 2: The original 2nd argument of 'gmsle_target_odt2pdf'.
## - 3: The dependencies to add.
define gmsle_target_odt2pdf_dependency
$(call gmsle_target_odt2pdf_name,$(1),$(2)): $(3)
endef
