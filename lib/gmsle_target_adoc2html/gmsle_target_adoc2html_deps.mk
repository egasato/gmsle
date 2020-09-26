#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Make Implementation

## Returns the dependencies of a AsciiDoc text document to HTML conversion
## target:
## - 1: The original 1st argument of 'gmsle_target_adoc2html'.
## - 2: The original 2nd argument of 'gmsle_target_adoc2html'.
define gmsle_target_adoc2html_deps
$(1)
endef
