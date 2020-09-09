#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Make Implementation

## Returns the dependencies of a LibreOffice text document to PDF conversion
## target:
## - 1: The original 1st argument of 'gmsle_target_odt2pdf'.
## - 2: The original 2nd argument of 'gmsle_target_odt2pdf'.
define gmsle_target_odt2pdf_deps
$(1)
endef
