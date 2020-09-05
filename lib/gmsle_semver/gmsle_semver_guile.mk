#!/usr/bin/env make -f
# SPDX-License-Identifier: GPL-3.0-or-later

## GNU Guile Implementation

# Load the dependencies
$(guile (load "$(LIB_GMSLE_PATH)/lib/gmsle_semver/gmsle_semver_guile.scm"))

## Returns the comparison of two semantic version numbers:
## - 1: The 1st version number.
## - 2: The comparison to perform.
## - 3: The 2nd version number.
gmsle_semver_guile = $(guile (gmsle_semver "$(1)" "$(2)" "$(3)"))
